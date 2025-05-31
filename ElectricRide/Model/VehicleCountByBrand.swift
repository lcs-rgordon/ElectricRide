//
//  VehicleCountByBrand.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation

struct VehicleCountByBrand: Identifiable, Codable {
    
    // MARK: Stored properties
    let id = UUID() // Database view doesn't return
                    // unique identifier, so we create
                    // one here
    let brand: String
    let vehiclesAvailable: Int
    
    // Provide encoding and decoding hints when sending to/from Supabase
    enum CodingKeys: String, CodingKey {
        
        case id
        case brand
        case vehiclesAvailable = "vehicles_available"
        
    }
    
}
