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
                
        // Get counts by brand from database
        Task {
            try await getCounts()
        }
    }
    
    // MARK: Function(s)
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
