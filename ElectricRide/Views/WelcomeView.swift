//
//  WelcomeView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct WelcomeView: View {
    
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
                    
                    Button {
                        // Will log user in eventually
                    } label: {
                        Label("Sign in to get started", systemImage: "car.fill")
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    .padding(.top)
                    
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
}
