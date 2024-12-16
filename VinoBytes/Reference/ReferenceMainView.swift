//
//  ReferenceMainView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/2/24.
//

import SwiftUI
import RevenueCat
import RevenueCatUI

struct ReferenceMainView: View {
    @EnvironmentObject var authViewModel: AuthViewModel  // Access subscription status
    @State private var isPaywallPresented = false  // Controls the presentation of the paywall
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    VStack(spacing: geometry.size.height * 0.05) {
                        
                        Text("Select Topic")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                            .padding(.top, geometry.size.height * 0.0001)
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                        
                        // **Free Feature - Grapes**
                        NavigationLink(destination: GrapeListView()) {
                            buttonContent(title: "Grapes", systemImage: "leaf.arrow.circlepath", geometry: geometry, isLocked: false)
                        }
                        
                        // **Premium Feature - Glossary**
                        let isGlossaryLocked = !authViewModel.hasActiveSubscription
                        if isGlossaryLocked {
                            Button(action: {
                                isPaywallPresented = true
                            }) {
                                buttonContent(title: "Glossary", systemImage: "pencil.and.list.clipboard", geometry: geometry, isLocked: true)
                            }
                        } else {
                            NavigationLink(destination: WineGlossaryListView()) {
                                buttonContent(title: "Glossary", systemImage: "pencil.and.list.clipboard", geometry: geometry, isLocked: false)
                            }
                        }
                        
                        // **Free Feature - Pairings**
                            NavigationLink(destination: FoodWinePairingsListView()) {
                                buttonContent(title: "Pairings", systemImage: "fork.knife", geometry: geometry, isLocked: false)
                            }
                        
                        
                        // **Free Feature - Regions**
                        NavigationLink(destination: RegionListView()) {
                            buttonContent(title: "Regions", systemImage: "map", geometry: geometry, isLocked: false)
                        }
                        
                        // **Premium Feature - Wine Flaws**
                        let isWineFlawsLocked = !authViewModel.hasActiveSubscription
                        if isWineFlawsLocked {
                            Button(action: {
                                isPaywallPresented = true
                            }) {
                                buttonContent(title: "Wine Flaws", systemImage: "exclamationmark.triangle", geometry: geometry, isLocked: true)
                            }
                        } else {
                            NavigationLink(destination: WineFlawListView()) {
                                buttonContent(title: "Wine Flaws", systemImage: "exclamationmark.triangle", geometry: geometry, isLocked: false)
                            }
                        }
                        
                    }
                    .padding(30)
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
                }
                
                .navigationTitle("Wine Library")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        .sheet(isPresented: $isPaywallPresented) {
            PaywallView()
                .environmentObject(authViewModel)
        }
    }
    
    /// Calculates a dynamic font size based on the geometry
    private func dynamicFontSize(base: CGFloat, geometry: GeometryProxy) -> CGFloat {
        let scalingFactor = geometry.size.width / 375 // Assuming 375 is base width
        return base * scalingFactor
    }
    
    
    
    
    
    @ViewBuilder
    private func buttonContent(title: String, systemImage: String, geometry: GeometryProxy, isLocked: Bool) -> some View {
        VStack(spacing: geometry.size.height * 0.01) { // Dynamic spacing
            Image(systemName: isLocked ? "lock.fill" : systemImage)  // Toggle icon based on lock status
                .resizable()
                .scaledToFit()
                .foregroundColor(isLocked ? .lightMaroon : .black)  // Change color based on lock status
                .frame(width: geometry.size.width * 0.06, height: geometry.size.width * 0.06) // Dynamic icon size
                .minimumScaleFactor(0.5) // Allows icon to scale down if needed
            HStack {
                Spacer() // First spacer for left side
                Text(title)
                    .font(.system(size: dynamicFontSize(base: 35, geometry: geometry))) // Adjust the base font size as needed
                    .foregroundColor(isLocked ? .black.opacity(0.6) : .black)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                Spacer() // Second spacer pushes text to center
            }
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: geometry.size.height * 0.1) // Dynamic height
        .background(isLocked ? Color.gray.opacity(0.3) : Color("LightLatte")) // Adjust background color
        .cornerRadius(10)
        .shadow(radius: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isLocked ? Color.gray.opacity(0.6) : Color("LightMaroon"), lineWidth: 2.2)
        )
    }
    
}
