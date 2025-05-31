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
    init() {
                
        // Get saved listings from database
        Task {
            try await getSavedListings()
        }
    }
    
    // MARK: Function(s)
    func getSavedListings() async throws {

        Logger.database.info("SavedListingViewModel: About to try loading saved listings from database.")

        do {
            
            let results: [SavedListing] = try await supabase
                .from("saved_listings")
                .select()
                .execute()
                .value

            Logger.database.info("SavedListingViewModel: Saved listings retrieved; about to assign results to `savedListings` array.")

            self.savedListings = results
            
        } catch {
            Logger.database.error("SavedListingViewModel: Could not load saved listings.")
            Logger.database.error("\(error)")
        }
        
    }
    
}
