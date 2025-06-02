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
        
    }
    
    // MARK: Function(s)
    func setSignedInPatron(to selectedPatron: Patron) {
        
        self.signedInPatron = selectedPatron
        
    }
    
    func signOut() {
        self.signedInPatron = nil
    }
        
}
