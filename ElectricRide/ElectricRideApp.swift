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
    
    // Used to see changes in the database
    @State private var changeNotifier = ChangeNotifier()
    
    // Allow for tracking when app is backgrounded or foregrounded
    @Environment(\.scenePhase) var scenePhase

    // MARK: Computed properties
    var body: some Scene {
        WindowGroup {
            BranchingView()
                .environment(sharedAuthenticationStore)
                .environment(changeNotifier)
        }
        .onChange(of: scenePhase) { oldPhase, newPhase in
            switch newPhase {
            case .background:
                // To conserve server resources, tell the database we
                // no longer want to receive updates about database changes
                changeNotifier.unsubscribe()
            case .active:
                // When the app is active again, we need to be able to know
                // when the database has changed
                changeNotifier.subscribe()
            default:
                break
            }
        }
    }
}
