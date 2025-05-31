//
//  Patron.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation

struct Patron: Identifiable, Codable, Hashable {
    
    // MARK: Stored properties
    let id: Int
    let firstName: String
    let lastName: String
    let emailAddress: String
    let phoneNumber: String
    
    // Provide encoding and decoding hints when sending to/from Supabase
    enum CodingKeys: String, CodingKey {
        
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
        
    }
    
}
