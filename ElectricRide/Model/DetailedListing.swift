//
//  DetailedListing.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import Foundation

struct DetailedListing: Identifiable, Codable {
    
    // MARK: Stored properties
    let id: Int
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

// MARK: Sample Data
// NOTE: In the interests of saving some time while writing yet another tutorial,
//       Mr. Gordon generated this sample code using the Anthropic AI service (Claude Sonnet 4 model).
//
//       Some aspects of the code were improved by Mr. Gordon.
extension DetailedListing {
    static let sampleData = DetailedListing(
        id: 1,
        price: 75000,
        description: "Excellent condition Tesla Model S with autopilot. This vehicle has been well maintained and comes with all original documentation. Features include premium interior, enhanced autopilot, and supercharging capability. Perfect for long distance travel or daily commuting.",
        listedOn: Date(),
        brand: "Tesla",
        model: "Model S",
        year: "2023",
        colour: "White",
        drivetrain: "AWD"
    )
    
    static let sampleList = [
        DetailedListing(
            id: 1,
            price: 75000,
            description: "Excellent condition Tesla Model S with autopilot",
            listedOn: Date(),
            brand: "Tesla",
            model: "Model S",
            year: "2023",
            colour: "White",
            drivetrain: "AWD"
        ),
        DetailedListing(
            id: 2,
            price: 42000,
            description: "Low mileage Model 3, great for commuting",
            listedOn: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(),
            brand: "Tesla",
            model: "Model 3",
            year: "2024",
            colour: "Black",
            drivetrain: "RWD"
        ),
        DetailedListing(
            id: 3,
            price: 85000,
            description: "Adventure-ready Rivian R1T pickup",
            listedOn: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(),
            brand: "Rivian",
            model: "R1T",
            year: "2023",
            colour: "Green",
            drivetrain: "AWD"
        )
    ]
}
