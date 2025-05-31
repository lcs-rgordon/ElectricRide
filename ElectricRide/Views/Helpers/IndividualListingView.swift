//
//  IndividualListingView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import SwiftUI

struct IndividualListingView: View {
    
    // MARK: Stored properties
    
    // We need to know what patron is signed in
    @Environment(SharedAuthenticationStore.self) var sharedAuthenticationStore

    // The listing to show
    let listing: DetailedListing
    
    // View model to allow a listing to be saved
    @State private var viewModel = IndividualListingViewModel()

    // MARK: Computed properties
    private var formattedPrice: String {
        return listing.price.formatted(.currency(code: "CAD"))
    }
    
    private var formattedDate: String {
        return listing.listedOn.formatted(date: .abbreviated, time: .omitted)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Hero image placeholder
                Image(systemName: "car.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .background(Color.blue.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                VStack(alignment: .leading, spacing: 16) {
                    // Vehicle title and price
                    VStack(alignment: .leading, spacing: 8) {
                        Text("\(listing.year) \(listing.brand) \(listing.model)")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text(formattedPrice)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                    
                    Divider()
                    
                    // Vehicle specifications
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Specifications")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        VStack(spacing: 8) {
                            KeyValueView(key: "Year", value: listing.year)
                            KeyValueView(key: "Make", value: listing.brand)
                            KeyValueView(key: "Model", value: listing.model)
                            KeyValueView(key: "Colour", value: listing.colour)
                            KeyValueView(key: "Drivetrain", value: listing.drivetrain)
                            KeyValueView(key: "Listed On", value: formattedDate)
                        }
                    }
                    
                    Divider()
                    
                    // Description
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Description")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text(listing.description)
                            .font(.body)
                            .foregroundColor(.secondary)
                            .lineSpacing(2)
                    }
                    
                    Divider()
                    
                    // Action buttons
                    VStack(spacing: 12) {
                        Button(action: {
                            // Contact seller action
                        }) {
                            HStack {
                                Image(systemName: "message.fill")
                                Text("Contact Seller")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        Button(
                            action: {
                                // Save listing action
                                viewModel.saveListing(
                                    withListingId: listing.id,
                                    forPatronWithId: sharedAuthenticationStore.signedInPatron?.id ?? 0
                                )
                        }) {
                            HStack {
                                Image(systemName: "heart")
                                Text("Save Listing")
                            }
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    IndividualListingView(listing: DetailedListing.sampleData)
        .environment(SharedAuthenticationStore())
}
