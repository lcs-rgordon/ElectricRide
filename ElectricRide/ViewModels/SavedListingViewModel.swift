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
    
    // The list of saved listings for the provided patron
    var savedListings: [SavedListing] = []
    
    // The id of the patron we're showing saved listings for
    private var patronId: Int
    
    // MARK: Initializer(s)
    init(forPatronWithId id: Int) {
                
        // Save the patron id for future reference (when we need to refresh)
        self.patronId = id
        
        // Get saved listings from database
        self.refresh()
    }
    
    // MARK: Function(s)
    func refresh() {
        
        Logger.database.info("SavedListingViewModel: Refreshing...")
        
        Task {
            try await getSavedListings(forPatronWithId: self.patronId)
        }
        
    }
    
    
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
