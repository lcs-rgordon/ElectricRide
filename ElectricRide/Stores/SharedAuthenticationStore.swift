//
//  SharedAuthenticationStore.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import Foundation

@Observable @MainActor
class SharedAuthenticationStore {
    
    // MARK: Stored properties
    let signedInPatron: Patron?
    
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
        self.signedInPatron = nil
    }
        
}
