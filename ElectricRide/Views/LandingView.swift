//
//  LandingView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import OSLog
import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // Get a reference to the shared authentication store so we know which patron is logged in
    @Environment(SharedAuthenticationStore.self) var sharedAuthenticationStore
    
    // Gain access to the shared change notifier so we can tell when a refresh of data is required
    @Environment(ChangeNotifier.self) private var changeNotifier
    
    // Store the view model for saved listing (at first with a patron id of 0)
    @State private var savedListingsViewModel = SavedListingViewModel(forPatronWithId: 0)
    
    // MARK: Computed properties
    var body: some View {
        
        TabView {
            
            DetailedListingView()
                .tabItem {
                    Image(systemName: "text.page.fill")
                    Text("Listings")
                }
            
            SavedListingView(viewModel: savedListingsViewModel)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Saved")
                }
            
            PatronView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("My profile")
                }
            
        }
        // When this view appears, load the correct view model based on patron id
        .task {
            Logger.viewCycle.info("LandingView: View has appeared...")
            if let signedInPatron = sharedAuthenticationStore.signedInPatron {
                Logger.viewCycle.info("LandingView: Loading new instance of view model for patron with id \(signedInPatron.id)...")
                savedListingsViewModel = SavedListingViewModel(forPatronWithId: signedInPatron.id)
            }
        }
        // Watch for database changes
        .onChange(of: changeNotifier.changeCount) {
            
            Logger.viewCycle.info("LandingView: Database change observed; updating SavedListingViewModel...")
            
            savedListingsViewModel.refresh()
        }
    }
    
}

#Preview {
    LandingView()
        .environment(SharedAuthenticationStore())
        .environment(ChangeNotifier())
}
