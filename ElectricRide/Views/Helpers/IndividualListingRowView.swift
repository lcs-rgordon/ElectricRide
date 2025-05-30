//
//  IndividualListingRowView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import SwiftUI

// NOTE: In the interests of saving some time while writing another tutorial,
//       Mr. Gordon generated this view using the Anthropic AI service (Claude Sonnet 4 model).
//
//       Some aspects of the code were improved by Mr. Gordon.
struct IndividualListingRowView: View {
    
    // MARK: Stored properties
    let listing: DetailedListing
    
    private var formattedPrice: String {
        return listing.price.formatted(.currency(code: "CAD"))
    }
    
    var body: some View {
        HStack(spacing: 12) {
            // Vehicle image placeholder
            Image(systemName: "car.fill")
                .font(.system(size: 28))
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .background(Color.blue.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 4) {
                // Vehicle title
                Text("\(listing.year) \(listing.brand) \(listing.model)")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                
                // Vehicle details
                HStack(spacing: 8) {
                    Text(listing.colour)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("•")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text(listing.drivetrain)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                // Price
                Text(formattedPrice)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
            }
            
            Spacer()
            
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    NavigationStack {
        List(DetailedListing.sampleList) { currentListing in
            IndividualListingRowView(listing: currentListing)
        }
        .navigationTitle("Listings")
    }
}
