//
//  SharedAuthenticationStore.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation
import OSLog
import GoogleSignIn
import Supabase

@Observable @MainActor
class SharedAuthenticationStore {
    
    // MARK: Stored properties

    // The currently signed in patron
    var signedInPatron: Patron?
        
    // Which service was used to sign in?
    var loggedInWithService: AuthenticationService = .undetermined

    // For holding any messages to show later regarding problems signing in
    var authenticationException: String = ""

    // What is the status of the user's sign in process?
    var authenticationStatus: AuthenticationState = .undetermined
    
    // MARK: Computed properties
    var patronIsSignedIn: Bool {
        if signedInPatron == nil {
            return false
        } else {
            return true
        }
    }
    
    // MARK: Initializer(s)
    init() {
        
        // To begin, there is no one signed in
        self.signedInPatron = nil
        
        // Monitor for changes in authentication status
        Task {
            await self.monitorAuthenticationState()
        }
        
    }
    
    // MARK: Function(s)
    func setSignedInPatron(to selectedPatron: Patron) {
        
        self.signedInPatron = selectedPatron
        
    }
    
    func signOut() {
        
        Task {
            do {
                Logger.authentication.info("SharedAuthenticationStore: About to sign out patron with id \(self.signedInPatron?.id ?? 0) and email address \(self.signedInPatron?.emailAddress ?? "").")
                // IMPORTANT: Only logout from the current session, not ALL sessions the user has with our application.
                // SEE: https://supabase.com/docs/guides/auth/signout?queryGroups=language&language=swift
                try await supabase.auth.signOut(scope: .local)
                self.authenticationStatus = .signedOut
                self.loggedInWithService = .undetermined
                Logger.authentication.info("SharedAuthenticationStore: Patron with id \(self.signedInPatron?.id ?? 0) and email address \(self.signedInPatron?.emailAddress ?? "") has been signed out.")
            } catch {
                Logger.authentication.error("SharedAuthenticationStore: Error signing out user, details: \(String(describing: error))")
            }
        }
        
    }
    
    func setNameAndEmail() async throws {
        
        Logger.authentication.info("SharedAuthenticationStore: About to set name and email from authentication object.")

        // Holds the metadata object we are given after a social sign-in occurs
        var retrievedResult: [String: AnyJSON]?
        
        do {
            
            // Get the metadata object for the logged in user
            retrievedResult = try await supabase.auth.session.user.userMetadata
            
        } catch {
            
            Logger.authentication.error("SharedAuthenticationStore: Could not get the metadata object for the signed in user.")
            Logger.authentication.error("SharedAuthenticationStore: \(String(describing: error))")
            
        }
        
        // Ensure that the metadata object could be retrieved
        guard let result = retrievedResult else {
            Logger.authentication.error("SharedAuthenticationStore: Metadata object for logged in user could not be unwrapped.")
            throw AuthenticationError.authenticationObjectMissing
        }
        
        // Pull the name and email from the metadata object
        Logger.authentication.info("SharedAuthenticationStore: Metadata object contains...\n\n\(result)")
        let email = String(describing: result["email"] ?? "")
        let name = String(describing: result["name"] ?? "")

        // Ensure that the email is not an empty string
        guard email.isEmpty == false else {
            Logger.authentication.error("SharedAuthenticationStore: Email address was missing from metadata object.")
            throw AuthenticationError.emailMissing
        }

        // Ensure that the name is not an empty string
        guard name.isEmpty == false else {
            Logger.authentication.error("SharedAuthenticationStore: Name was missing from metadata object.")
            throw AuthenticationError.nameMissing
        }

        // Is this person someone who has used the app before?
        Logger.authentication.info("SharedAuthenticationStore: About to check whether user has signed in to this app before...")
        try await checkWhetherPatronExists(basedUpon: email, givenName: name)
        
    }
    
    private func checkWhetherPatronExists(basedUpon givenEmailAddress: String, givenName: String) async throws {
                
        // Look up patron(s) who have this email address
        let results: [Patron] = try await supabase
            .from("patron")
            .select()
            .eq("email_address", value: givenEmailAddress)
            .limit(1)
            .execute()
            .value
        
        // Should be either 0 or 1 elements in array...
        // When there is one row returned, we found that the email of the
        // logged in user matches one of the emails in the "patron" table
        // in the database, which means this user has signed in to the app
        // before...
        if results.count == 1 {

            Logger.authentication.info("SharedAuthenticationStore: Email address already in database, this is an existing user of the app.")

            // Set the active patron record
            self.signedInPatron = results[0]
            
        } else if results.count == 0 {
            
            Logger.authentication.info("SharedAuthenticationStore: Email address not yet in database, this is a new user of the app.")
            
            // Create a new Patron instance
            //
            // NOTE: Google social sign-in doesn't provide first and last names seperately.
            //       To work around this we just place the user's entire name in the firstName field.
            let newPatron = Patron(
                id: nil,
                firstName: givenName,
                lastName: "",
                emailAddress: givenEmailAddress,
                phoneNumber: ""
            )
            
            // Add user to the patron table, then immediately retreive the new patron
            let confirmedNewPatron: Patron = try await supabase
                .from("patron")
                .insert(newPatron)
                // Now get back the newly created row (this will have an id assigned)
                .select()
                .single()
                .execute()
                .value
            
            // Set the active patron
            self.signedInPatron = confirmedNewPatron
            
        } else {
            Logger.authentication.error("SharedAuthenticationStore: Email address of user signing in matches multiple patron records.")
            throw AuthenticationError.emailMatchesMultiplePatronRecords
        }
        
    }
    
    private func monitorAuthenticationState() async {
        
        // Monitor authentication state
        Logger.authentication.info("SharedAuthenticationStore: About to begin watching for authentication state changes.")
        
        // Essentially a loop that activates whenever authentication state change is detected
        for await state in supabase.auth.authStateChanges {
            
            Logger.authentication.info("SharedAuthenticationStore: Supabase authentication state change, it is now: \(String(describing: state.event)).")

            switch state.event {
            case .initialSession:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is INITIAL_SESSION")
            case .signedIn:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is SIGNED_IN")
            case .signedOut:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is SIGNED_OUT")
            case .tokenRefreshed:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is TOKEN_REFRESHED")
            case .userUpdated:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is USER_UPDATED")
            case .passwordRecovery:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is PASSWORD_RECOVERY")
            case .mfaChallengeVerified:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is MFA_CHALLENGE_VERIFIED")
            case .userDeleted:
                Logger.authentication.info("SharedAuthenticationStore: Auth state event is USER_DELETED")
            }
            
            // If the user has been signed in, signed out, or if this is their
            // initial session with Supabase, the code block below will run
            if [.initialSession, .signedIn, .signedOut].contains(state.event) {

                // isAuthenticated set to true when the user has a session
                // Otherwise, it is set to false
                Logger.authentication.info("SharedAuthenticationStore: About to check whether an authenticated session exists.")
                if state.session == nil {
                    Logger.authentication.info("SharedAuthenticationStore: There is no existing authenticated session to restore; setting authentication status to 'signed out'.")
                    self.authenticationStatus = .signedOut
                } else {
                    Logger.authentication.info("SharedAuthenticationStore: An authenticated session exists; setting authentication status to 'signed in'.")
                    self.authenticationStatus = .signedIn
                }

                if self.authenticationStatus == .signedIn {
                    
                    // Obtain the name and email address for this user
                    do {
                        
                        // Reset authentication information message
                        self.authenticationException = ""
                        
                        // Try to get authentication information (name and email address of this user)
                        try await self.setNameAndEmail()
                                                    
                    } catch AuthenticationError.emailMissing, AuthenticationError.nameMissing {
                        
                        Logger.authentication.error("SharedAuthenticationStore: Name or email address is missing, so we are signing out this user.")
                        
                        do {
                            // IMPORTANT: Only logout from the current session, not ALL sessions the user has with our application.
                            // SEE: https://supabase.com/docs/guides/auth/signout?queryGroups=language&language=swift
                            try await supabase.auth.signOut(scope: .local)
                            Logger.authentication.info("SharedAuthenticationStore: Could not obtain name or email address after session restoration occurred.\n\nPlease take a screenshot of this occurrence and contact the application owner.")
                            self.authenticationException = "SharedAuthenticationStore: Could not obtain name or email address after session restoration occurred.\n\nPlease take a screenshot of this occurrence and contact the application owner."
                        } catch {
                            Logger.authentication.error("SharedAuthenticationStore: Name or email was missing; also could not sign out from authenticated session.")
                        }
                        
                    } catch {
                        Logger.authentication.error("SharedAuthenticationStore: \(String(describing: error)).")
                    }
                    
                }
            }
        }
    }
        
}
