//
//  SavedListingViewModel.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation
import OSLog

@Observable @MainActor
class SavedListingViewModel: Observable {
    
    // MARK: Stored properties
    var savedListings: [SavedListing] = []
    
    // MARK: Initializer(s)
    init(forPatronWithId id: Int) {
                
        // Get saved listings from database
        Task {
            try await getSavedListings(forPatronWithId: id)
        }
    }
    
    // MARK: Function(s)
    func getSavedListings(forPatronWithId id: Int) async throws {

        Logger.database.info("SavedListingViewModel: About to try loading saved listings from database for patron with id \(id).")

        do {
            
            let results: [SavedListing] = try await supabase
                .from("saved_listings")
                .select()
                .equals("patron_id", value: "\(id)")
                .execute()
                .value

            Logger.database.info("SavedListingViewModel: Saved listings for patron with id \(id ) retrieved; about to assign results to `savedListings` array.")

            self.savedListings = results
            
        } catch {
            Logger.database.error("SavedListingViewModel: Could not load saved listings for patron with id \(id).")
            Logger.database.error("\(error)")
        }
        
    }
    
}
