//
//  SavedListing.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation

struct SavedListing: Identifiable, Codable {
    
    // MARK: Stored properties
    let id: Int
    let savedOn: Date
    let patronId: Int
    let price: Int
    let description: String
    let listedOn: Date
    let brand: String
    let model: String
    let year: String
    let colour: String
    let drivetrain: String
    
    // Provide encoding and decoding hints when sending to/from Supabase
    enum CodingKeys: String, CodingKey {
        
        case id
        case savedOn = "saved_on"
        case patronId = "patron_id"
        case price
        case description
        case listedOn = "listed_on"
        case brand
        case model
        case year
        case colour
        case drivetrain
        
    }
    
}
