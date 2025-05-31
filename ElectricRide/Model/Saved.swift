//
//  Saved.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation

struct Saved: Identifiable, Codable {
    
    // MARK: Stored properties
    let id: Int?            // Optional to allow for nil
                            // Database will assign this
                            // when new row added to 'saved'
                            // table.
    let savedOn: Date
    let patronId: Int
    let listingId: Int
    
    // Provide encoding and decoding hints when sending to/from Supabase
    enum CodingKeys: String, CodingKey {
        
        case id
        case savedOn = "saved_on"
        case patronId = "patron_id"
        case listingId = "listing_id"
    }
}
