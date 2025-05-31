//
//  SavedListingView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct SavedListingView: View {
    
    // MARK: Stored properties
    let viewModel: SavedListingViewModel
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.savedListings.isEmpty {
                    ContentUnavailableView(
                        "No saved listings",
                        systemImage: "questionmark.text.page.fill",
                        description: Text("Find a listing you like and save it to see something here.")
                    )
                    
                } else {
                    
                    List(viewModel.savedListings) { currentListing in
                        
                        // Make a temporary instance of DetailedListing to pass to the helper views
                        let listingToShow = DetailedListing(
                            id: currentListing.id,
                            price: currentListing.price,
                            description: currentListing.description,
                            listedOn: currentListing.listedOn,
                            brand: currentListing.brand,
                            model: currentListing.model,
                            year: currentListing.year,
                            colour: currentListing.colour,
                            drivetrain: currentListing.drivetrain
                        )
                        
                        NavigationLink {
                            IndividualListingView(listing: listingToShow)
                        } label: {
                            IndividualListingRowView(listing: listingToShow)
                        }
                    }
                }
            }
            .navigationTitle("Saved listings")
        }
    }
}

