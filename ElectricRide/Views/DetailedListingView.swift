//
//  ContentView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import OSLog
import SwiftUI

struct DetailedListingView: View {
    
    // MARK: Stored properties
    
    // Gain access to the shared change notifier so we can tell when a refresh of data is required
    @Environment(ChangeNotifier.self) private var changeNotifier

    // Create view model
    @State private var viewModel = DetailedListingViewModel()
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.listings.isEmpty {
                    ContentUnavailableView(
                        "No listings",
                        systemImage: "questionmark.text.page.fill",
                        description: Text("There are no listings available right now.")
                    )
                    
                } else {
                    List(viewModel.listings) { currentListing in
                        NavigationLink {
                            IndividualListingView(listing: currentListing)
                        } label: {
                            IndividualListingRowView(listing: currentListing)
                        }
                    }
                }
            }
            .navigationTitle("Listings")
        }
        .onChange(of: changeNotifier.changeCount) {
            
            Logger.viewCycle.info("DetailedListingView: Database change observed; updating view model.")
            
            viewModel.refresh()

        }
    }
}

#Preview {
    DetailedListingView()
}
