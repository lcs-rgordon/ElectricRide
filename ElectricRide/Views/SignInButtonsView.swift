//
//  SignInButtonsView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-06-01.
//

import GoogleSignInSwift
import GoogleSignIn
import OSLog
import Supabase
import SwiftUI

struct SignInButtonsView: View {
    
    @Environment(SharedAuthenticationStore.self) private var sharedAuthenticationStore

    // Keeps track of what happened when we tried to authenticate with Supabase
    @State var result: Result<Void, Error>?
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            Text("Sign in using one of the services below...")
                .foregroundStyle(.secondary)
                .font(.subheadline)
                .bold()

            VStack {
                
                GoogleSignInButton {
                    
                    Task {
                        do {
                            
                            // Try to restore an existing session rather than create a new one
                            let _ = try await supabase.auth.user()
                            result = .success(())
                            
                            // NOTE: It's important to restore an existing session if it exists,
                            //       so that we can see data we previously created.
                            //
                            // NOTE: Sessions last indefinitely by default.
                            // https://supabase.com/docs/guides/auth/sessions
                            
                        } catch AuthError.sessionMissing {
                            
                            // No session was found when we tried to restore a session.
                            // So, we need to sign in with Google
                            do {
                                
                                
                                // SEE: https://github.com/WesCSK/SwiftUI-Firebase-Authenticate-Using-Google-Sign-In
                                // ... for source of how to obtain the root view controller for GIDSignIn use
                                guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                                    return
                                }
                                
                                guard let root = screen.windows.first?.rootViewController else {
                                    return
                                }
                                
                                // Attempt to sign in with Google
                                let result = try await GIDSignIn.sharedInstance.signIn(withPresenting: root)
                                
                                // Now referring to:
                                // https://supabase.com/docs/guides/auth/social-login/auth-google?queryGroups=platform&platform=swift#configuration
                                
                                guard let idToken = result.user.idToken?.tokenString else {
                                    Logger.authentication.info("SignInButtonsView: No idToken found.")
                                    return
                                }
                                
                                let accessToken = result.user.accessToken.tokenString
                                Logger.authentication.info("SignInButtonsView: Access token obtained, it is: \(String(describing: accessToken))")
                                let refreshToken = result.user.refreshToken
                                Logger.authentication.info("SignInButtonsView: Refresh token obtained, it is: \(String(describing: refreshToken))")
                                
                                try await supabase.auth.signInWithIdToken(
                                    credentials: OpenIDConnectCredentials(
                                        provider: .google,
                                        idToken: idToken,
                                        accessToken: accessToken
                                    )
                                )
                                
                                sharedAuthenticationStore.loggedInWithService = .google
                                
                                // Reset authentication information message
                                sharedAuthenticationStore.authenticationException = ""

                                // Obtain the name and email address for this user
                                try await sharedAuthenticationStore.setNameAndEmail()
                                
                            } catch AuthenticationError.emailMissing, AuthenticationError.nameMissing {
                                
                                Logger.authentication.error("SignInButtonsView: Name or email is missing, signing out.")

                                do {
                                    // IMPORTANT: Only logout from the current session, not ALL sessions the user has with our application.
                                    // SEE: https://supabase.com/docs/guides/auth/signout?queryGroups=language&language=swift
                                    try await supabase.auth.signOut(scope: .local)
                                    sharedAuthenticationStore.authenticationException = "SignInButtonsView: Could not obtain name or email address after new authentication flow was completed.\n\nPlease take a screenshot of this occurrence and contact the application owner."
                                } catch {
                                    Logger.authentication.error("SignInButtonsView: Name or email was missing; also could not sign out from authenticated session.")
                                }
                                   
                            } catch {
                                
                                // Report any other error encountered when signing in
                                result = .failure(error)
                                
                            }
                            
                        } catch {
                            
                            // Report any error encountered when trying to find an existing session
                            Logger.authentication.error("SignInButtonsView: \(String(describing: error))")
                            result = .failure(error)
                            
                        }
                    }
                    
                }
                .frame(width: 300)
                .padding()
                
                // Based on what happened during authentication, show an appropriate
                // message
                // NOTE: Unlikely this will ever be seen by the user, since a successful
                //       sign-in will trigger BranchingView to reload and direct
                //       user to the main view of the app
                if let result {
                    switch result {
                    case .success:
                        // We had a successful sign-in, show BranchingView
                        let _ = print("SignInButtonsView: Switching on 'result' and had successful sign-in.")
                        BranchingView()
                    case .failure(let error):
                        // This should really never happen... 😬
                        let _ = print("SignInButtonsView: An error occured. Details are: \(error.localizedDescription)")
                        Text(error.localizedDescription).foregroundStyle(.red)
                    }
                }
                
            }
            
            Spacer()
            
        }
        .onAppear {
            Logger.viewCycle.info("SignInButtonsView: View has appeared.")
        }
        
    }
    
}
