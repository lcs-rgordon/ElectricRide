//
//  ContentView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import SwiftUI

struct DetailedListingView: View {
    
    // MARK: Stored properties
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
    }
}

#Preview {
    DetailedListingView()
}
