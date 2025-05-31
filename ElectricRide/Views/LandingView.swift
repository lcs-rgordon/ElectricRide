//
//  LandingView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Computed properties
    var body: some View {
        
        TabView {
            
            DetailedListingView()
                .tabItem {
                    Image(systemName: "text.page.fill")
                    Text("Listings")
                }
            
            SavedListingView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Saved")
                }
            
            PatronView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("My profile")
                }

        }
    }
}

#Preview {
    LandingView()
        .environment(SharedAuthenticationStore())
}
