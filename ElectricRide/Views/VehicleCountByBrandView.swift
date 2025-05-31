//
//  VehicleCountByBrandView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import OSLog
import SwiftUI

struct VehicleCountByBrandView: View {
    
    // MARK: Stored properties
    
    // Gain access to the shared change notifier so we can tell when a refresh of data is required
    @Environment(ChangeNotifier.self) private var changeNotifier
    
    // Create view model
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
            .onChange(of: changeNotifier.changeCount) {
                
                Logger.viewCycle.info("VehicleCountByBrandView: Database change observed; updating view model.")
                
                viewModel.refresh()

            }
        }
    }
}

#Preview {
    VehicleCountByBrandView()
        .padding()
}
