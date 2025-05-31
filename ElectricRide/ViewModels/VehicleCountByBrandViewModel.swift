//
//  VehicleCountByBrandViewModel.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation
import OSLog

@Observable @MainActor
class VehicleCountByBrandViewModel: Observable {
    
    // MARK: Stored properties
    var summaries: [VehicleCountByBrand] = []
    
    // MARK: Initializer(s)
    init() {

        // Refresh data
        self.refresh()

    }
    
    // MARK: Function(s)
    
    // Required since the count of listings could change
    // as other users of the app add vehicle listings
    func refresh() {
        
        Logger.database.info("VehicleCountByBrandViewModel: Refreshing...")
        
        Task {
            try await getCounts()
        }

    }
    
    func getCounts() async throws {

        Logger.database.info("VehicleCountByBrandViewModel: About to try loading count of vehicles available by brand.")

        do {
            
            let results: [VehicleCountByBrand] = try await supabase
                .from("count_of_vehicles_by_brand")
                .select()
                .execute()
                .value

            Logger.database.info("VehicleCountByBrandViewModel: Vehicle counts by brand retrieved; about to assign results to `summaries` array.")

            self.summaries = results
            
        } catch {
            Logger.database.error("VehicleCountByBrandViewModel: Could not load vehicle counts by brand.")
            Logger.database.error("\(error)")
        }
        
    }
    
}
