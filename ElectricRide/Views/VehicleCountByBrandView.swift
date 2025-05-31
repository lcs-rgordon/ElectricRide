//
//  VehicleCountByBrandView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct VehicleCountByBrandView: View {
    
    // MARK: Stored properties
    @State private var viewModel = VehicleCountByBrandViewModel()
    
    // MARK: Computed properties
    var body: some View {
        
        if viewModel.summaries.isEmpty {
            
            ContentUnavailableView(
                "No vehicles",
                systemImage: "questionmark.text.page.fill",
                description: Text("There are no listings available right now.")
            )
            
        } else {
            VStack(alignment: .leading, spacing: 4) {
                
                Text("We have many excellent used vehicles for sale!")
                    .padding(.bottom)
                
                Text("Right now we have:")
                    .padding(.bottom)
                                
                // Iterate over the summaries of vehicle availabilities by brand
                ForEach(viewModel.summaries) { summary in
                    HStack {
                        Text("\(summary.vehiclesAvailable) \(summary.brand)")
                        Spacer()
                    }
                }
                .padding(.leading)

            }
        }
    }
}

#Preview {
    VehicleCountByBrandView()
        .padding()
}
