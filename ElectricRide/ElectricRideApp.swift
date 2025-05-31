//
//  ElectricRideApp.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import SwiftUI

@main
struct ElectricRideApp: App {
    
    // MARK: Stored properties
    
    // Tracks data related to user authentication within the app
    @State private var sharedAuthenticationStore = SharedAuthenticationStore()

    // MARK: Computed properties
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environment(sharedAuthenticationStore)
        }
    }
}
