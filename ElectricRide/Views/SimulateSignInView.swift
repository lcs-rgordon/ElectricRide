//
//  SimulateSignInView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

struct SimulateSignInView: View {
    
    // MARK: Stored properties
    
    // Get a reference to the shared authentication store
    @Environment(SharedAuthenticationStore.self) var sharedAuthenticationStore
    
    // Make it possible to dismiss this sheet
    @Binding var showing: Bool
    
    // Which patron has been selected
    @State private var selectedPatron: Patron?
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                if sharedAuthenticationStore.patrons.isEmpty {
                    ProgressView()
                } else {
                    // Show a picker to select the patron
                    Picker("Select a patron:", selection: $selectedPatron) {
                        ForEach(sharedAuthenticationStore.patrons) { patron in
                            Text("\(patron.lastName), \(patron.firstName)").tag(patron)
                        }
                    }
                    .pickerStyle(.inline)
                }
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        // "Sign in" with the selected patron
                        sharedAuthenticationStore.setSignedInPatron(to: selectedPatron!)
                        // Dismiss this sheet
                        showing = false
                    } label: {
                        Text("Sign In")
                    }
                    .disabled(selectedPatron == nil)

                }
            }
            .navigationTitle("Simulate sign-in")
        }
    }
}

#Preview {
    
    @Previewable @State var sharedAuthenticationStore = SharedAuthenticationStore()
    @Previewable @State var sheetIsShowing = true
    
    Text("View that appears behind this one")
        .sheet(isPresented: $sheetIsShowing) {
            SimulateSignInView(showing: $sheetIsShowing)
                .presentationDetents([.fraction(0.3), .medium])
                .environment(sharedAuthenticationStore)
        }
}
