//
//  SharedAuthenticationStore.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation
import OSLog

@Observable @MainActor
class SharedAuthenticationStore {
    
    // MARK: Stored properties

    // The currently signed in patron
    var signedInPatron: Patron?
    
    // List of all patrons using the app
    var patrons: [Patron] = []

    // MARK: Computed properties
    var patronIsSignedIn: Bool {
        if signedInPatron == nil {
            return false
        } else {
            return true
        }
    }
    
    // MARK: Initializer(s)
    init() {
        
        // To begin, there is no one signed in
        self.signedInPatron = nil
        
        // Actually get the list of patrons
        Task {
            try await self.getAllPatrons()
        }
    }
    
    // MARK: Function(s)
    func getAllPatrons() async throws {

        Logger.database.info("SharedAuthenticationStore: About to retrieve all patrons.")

        do {
            
            let results: [Patron] = try await supabase
                .from("patron")
                .select()
                .execute()
                .value

            Logger.database.info("SharedAuthenticationStore: Patrons retrieved; about to assign results to `patrons` array.")

            self.patrons = results
            
        } catch {
            Logger.database.error("SharedAuthenticationStore: Could not load available patrons.")
            Logger.database.error("\(error)")
        }
        
    }
    
    func setSignedInPatron(to selectedPatron: Patron) {
        
        self.signedInPatron = selectedPatron
        
    }
        
}
