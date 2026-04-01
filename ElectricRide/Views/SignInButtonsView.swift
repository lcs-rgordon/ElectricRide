//
//  SignInButtonsView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-06-01.
//

import OSLog
import Supabase
import SwiftUI

struct SignInButtonsView: View {
    
    @Environment(SharedAuthenticationStore.self) private var sharedAuthenticationStore
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            Text("Sign in using one of the services below...")
                .foregroundStyle(.secondary)
                .font(.subheadline)
                .bold()
            
            Button {
                Task {
                    do {
                        let redirectTo = URL(string: "electricride://login-callback")
                        
                        if supabaseURL.scheme == "https" {
                            // Production: ASWebAuthenticationSession works fine with https
                            // and gives a smoother in-app browser sheet experience.
                            try await supabase.auth.signInWithOAuth(
                                provider: .google,
                                redirectTo: redirectTo
                            )
                        } else {
                            // Local development: ASWebAuthenticationSession does not support
                            // http:// URLs in the iOS Simulator, so open Safari instead.
                            let url = try supabase.auth.getOAuthSignInURL(
                                provider: .google,
                                redirectTo: redirectTo
                            )
                            openURL(url)
                        }
                        
                        sharedAuthenticationStore.loggedInWithService = .google
                        
                    } catch {
                        Logger.authentication.error("SignInButtonsView: Error during Google sign-in: \(String(describing: error))")
                        sharedAuthenticationStore.authenticationException = "An error occurred during sign-in. Please try again."
                    }
                }
            } label: {
                Text("Sign in with Google")
                    .frame(width: 280)
            }
            .buttonStyle(.borderedProminent)
            .frame(width: 300)
            .padding()
            
            Spacer()
            
        }
        .onAppear {
            Logger.viewCycle.info("SignInButtonsView: View has appeared.")
        }
        
    }
    
}

