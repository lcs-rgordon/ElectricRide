//
//  WelcomeView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct WelcomeView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                // Background layer
                LinearGradient(colors: [.white, .white, .blue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
                // Top layer
                VStack {
                                        
                    VehicleCountByBrandView()
                    
                    SignInButtonsView()

                    Spacer()
                    
                }
                .font(.title2)
                .padding()

                
            }
            .navigationTitle("Electric Ride")
                        
        }
        
    }
    
}

#Preview {
    WelcomeView()
        .environment(SharedAuthenticationStore())
}
