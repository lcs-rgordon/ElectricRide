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
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // Show a different view depending on whether user is signed in
            if sharedAuthenticationStore.patronIsSignedIn {
                LandingView()
            } else {
                WelcomeView()
            }
            
        }
        // Ensures a smoother transition between views when a user is selected for sign-in
        .animation(
            Animation.easeInOut(
                duration: 1
            ),
            value: sharedAuthenticationStore.patronIsSignedIn
        )
        
    }
}

#Preview {
    BranchingView()
        .environment(SharedAuthenticationStore())
}
