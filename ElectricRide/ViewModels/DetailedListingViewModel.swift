//
//  DetailedListingViewModel.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import Foundation
import OSLog

@Observable @MainActor
class DetailedListingViewModel: Observable {
    
    // MARK: Stored properties
    var listings: [DetailedListing] = []
    
    // MARK: Initializer(s)
    init() {
                
        // Refresh data
        self.refresh()
    }
    
    // MARK: Function(s)
    
    // Required as available listings will change as other
    // users of the app add vehicles they want to sell
    func refresh() {
        
        Logger.database.info("DetailedListingViewModel: Refreshing...")
        
        Task {
            try await getActiveListings()
        }

    }
    
    func getActiveListings() async throws {

        Logger.database.info("DetailedListingViewModel: About to try loading listings with details from database.")

        do {
            
            let results: [DetailedListing] = try await supabase
                .from("listings_with_details")
                .select()
                .execute()
                .value

            Logger.database.info("DetailedListingViewModel: Listings with details retrieved; about to assign results to `listings` array.")

            self.listings = results
            
        } catch {
            Logger.database.error("DetailedListingViewModel: Could not load listings with details.")
            Logger.database.error("\(error)")
        }
        
    }
    
}
