//
//  PatronView.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//

import SwiftUI

// NOTE: In the interests of saving some time while writing another tutorial,
//       Mr. Gordon generated this view using the Anthropic AI service (Claude Sonnet 4 model).
//
//       Some aspects of the code were improved by Mr. Gordon.

struct PatronView: View {
    
    // MARK: Stored properties
    @Environment(SharedAuthenticationStore.self) var sharedAuthenticationStore
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            
            VStack(spacing: 0) {
                // Show the signed-in patron
                if let signedInPatron = sharedAuthenticationStore.signedInPatron {
                    VStack(spacing: 24) {
                        
                        // Avatar and basic info section
                        VStack(spacing: 16) {
                            
                            // Avatar placeholder
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 100))
                                .foregroundColor(.blue)
                            
                            // Name
                            Text("\(signedInPatron.firstName) \(signedInPatron.lastName)")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding(.top, 32)
                        
                        // Contact information section
                        VStack(alignment: .leading, spacing: 20) {
                            
                            // Email
                            ContactInfoRow(
                                icon: "envelope.fill",
                                label: "Email",
                                value: signedInPatron.emailAddress
                            )
                            
                            // Phone
                            ContactInfoRow(
                                icon: "phone.fill",
                                label: "Phone",
                                value: signedInPatron.phoneNumber ?? ""
                            )
                            
                        }
                        .padding(.horizontal, 24)
                        
                        Spacer()
                        
                        // Sign out button
                        Button(action: {
                            sharedAuthenticationStore.signOut()
                        }) {
                            HStack {
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                Text("Sign Out")
                            }
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(12)
                        }
                        .padding(.horizontal, 24)
                        .padding(.bottom, 32)
                    }
                } else {
                    
                    // This will show in some situations when previewing individual views
                    ContentUnavailableView(
                        "Not signed in",
                        systemImage: "person.fill.questionmark",
                        description: Text(
                            "No user is signed in.\nPreview from BranchingView to simulate a signed-in user."
                        )
                    )
                }
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    PatronView()
        .environment(SharedAuthenticationStore())
}

