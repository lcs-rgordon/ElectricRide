//
//  BranchingView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct BranchingView: View {
    
    // MARK: Stored properties
    
    // Get a reference to the authentication store
    @Environment(SharedAuthenticationStore.self) var sharedAuthenticationStore
    
    // Whether to show an alert with an authentication error or not
    @State private var showingAlert = false
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // Show a different view depending on whether user is signed in
            switch sharedAuthenticationStore.authenticationStatus {
            case .signedIn:
                // User is authenticated – show main view of our app
                LandingView()
            case .undetermined, .signedOut:
                // User not authenticated
                VStack {
                    WelcomeView()
                        .alert("Authentication Error", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) {
                                // Do nothing
                            }
                        } message: {
                            Text(sharedAuthenticationStore.authenticationException)
                        }
                    
                }
            }
            
        }
        // Ensures a smoother transition between views when authentication state changes
        .animation(
            Animation.easeInOut(
                duration: 1
            ),
            value: sharedAuthenticationStore.authenticationStatus
        )
        
    }
}

#Preview {
    BranchingView()
        .environment(SharedAuthenticationStore())
}
