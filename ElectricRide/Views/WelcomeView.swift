//
//  WelcomeView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct WelcomeView: View {
    
    // MARK: Stored properties
    
    // Whether to show the sheet to allow a simulated sign-in
    @State private var showingSignInSheet = false
    
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
                        // Show sheet to simulate a sign-in
                        showingSignInSheet = true
                    } label: {
                        Label("Sign in to see more details", systemImage: "car.fill")
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    .padding(.top)
                    
                    Spacer()
                    
                }
                .font(.title2)
                .padding()
                .sheet(isPresented: $showingSignInSheet) {
                    SimulateSignInView(showing: $showingSignInSheet)
                        .presentationDetents([.fraction(0.3), .medium])
                }

                
            }
            .navigationTitle("Electric Ride")
                        
        }
        
    }
    
}

#Preview {
    WelcomeView()
        .environment(SharedAuthenticationStore())
}
