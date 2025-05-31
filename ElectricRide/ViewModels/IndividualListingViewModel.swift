//
//  IndividualListingViewModel.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation
import OSLog

@Observable @MainActor
class IndividualListingViewModel: Observable {
    
    // MARK: Stored properties
    
    // MARK: Initializer(s)
    
    // MARK: Function(s)
    func saveListing(withListingId listingId: Int, forPatronWithId patronId: Int) {

        Logger.database.info("IndividualListingViewModel: About to save listing with listing id \(listingId) for patron with id \(patronId).")
        
        // Make a constant with the current date and time
        let now = Date()
        
        // Make a new instance of the Saved data type in memory
        let newSavedListing = Saved(
            id: nil,
            savedOn: now,
            patronId: patronId,
            listingId: listingId
        )

        // Make an asynchronous task
        // (so the user interface and other parts of the app can keep doing their thing while this happens)
        Task {

            // Now try to add this to the database
            // and then immediately retreive the newly
            // added row
            do {
                
                let confirmedSavedListing: Saved = try await supabase
                    .from("saved")
                    .insert(newSavedListing)
                    // Now get back the newly created row (this will have an id assigned)
                    .select()
                    .single()
                    .execute()
                    .value

                Logger.database.info("IndividualListingViewModel: Listing with id \(listingId) saved for patron with id \(patronId); id of new row in `saved` table is \(confirmedSavedListing.id ?? 0).")

                
            } catch {
                Logger.database.error("IndividualListingViewModel: Could not save listing with id \(listingId) for patron with id \(patronId).")
                Logger.database.error("\(error)")
            }
        }
        
    }
    
}

