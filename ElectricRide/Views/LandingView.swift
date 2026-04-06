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
    
    // Store the view model for saved listing (initialized once patron id is available)
    @State private var savedListingsViewModel: SavedListingViewModel?
    
    // MARK: Computed properties
    var body: some View {
        
        Group {
            if let savedListingsViewModel {
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
                // Watch for database changes
                .onChange(of: changeNotifier.changeCount) {
                    
                    Logger.viewCycle.info("LandingView: Database change observed; updating SavedListingViewModel...")
                    
                    savedListingsViewModel.refresh()
                }
            } else {
                // Show a loading indicator while waiting for patron authentication
                ProgressView("Loading...")
            }
        }
        // When this view appears, load the correct view model based on patron id
        .task {
            Logger.viewCycle.info("LandingView: View has appeared...")
            if let signedInPatron = sharedAuthenticationStore.signedInPatron, let id = signedInPatron.id {
                Logger.viewCycle.info("LandingView: Loading new instance of view model for patron with id \(id)...")
                savedListingsViewModel = SavedListingViewModel(forPatronWithId: id)
                
                // Now that user is authenticated, subscribe to realtime updates
                Logger.viewCycle.info("LandingView: User is authenticated, subscribing to realtime updates...")
                changeNotifier.subscribe()
            }
        }
        // Watch for when signedInPatron changes (e.g., session restoration)
        .onChange(of: sharedAuthenticationStore.signedInPatron) { oldValue, newValue in
            Logger.viewCycle.info("LandingView: signedInPatron changed...")
            if let signedInPatron = newValue, let id = signedInPatron.id {
                Logger.viewCycle.info("LandingView: Creating view model for patron with id \(id)...")
                savedListingsViewModel = SavedListingViewModel(forPatronWithId: id)
                
                // Note: We DON'T subscribe here because .task already handles it
                // Subscribing again would create a duplicate subscription
            }
        }
    }
    
}

#Preview {
    LandingView()
        .environment(SharedAuthenticationStore())
        .environment(ChangeNotifier())
}
