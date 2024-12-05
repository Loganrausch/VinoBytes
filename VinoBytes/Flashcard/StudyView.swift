//
//  StudyView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/8/24.
//

import Foundation
import SwiftUI
import RevenueCat
import RevenueCatUI

struct StudyRegion: Identifiable {
    let name: String
    let isPremium: Bool
    var id: String { name }
}

struct StudyView: View {
    @EnvironmentObject var flashcardManager: FlashcardManager
    @EnvironmentObject var sessionManager: StudySessionManager
    @EnvironmentObject var authViewModel: AuthViewModel  // To access subscription status
    @State private var selectedRegions = Set<String>()
    @State private var navigateToSessionSummary = false
    @State private var showingAlert = false
    @State private var isActiveLink = false
    @State private var showSessionSummary = false
    @State private var lastSession: StudySession?
    @State private var isPaywallPresented = false  // Controls the presentation of the paywall
    
    let freeRegions = ["Argentina", "Hungary", "Portugal"]
       let premiumRegions = ["Australia", "Austria", "Chile", "France", "Germany", "Greece", "Italy", "New Zealand", "South Africa", "Spain", "USA"]

       var allRegions: [StudyRegion] {
           let free = freeRegions.map { StudyRegion(name: $0, isPremium: false) }
           let premium = premiumRegions.map { StudyRegion(name: $0, isPremium: true) }
           return (free + premium).sorted { $0.name < $1.name }
       }
    
    
    var body: some View {
        NavigationStack {
            VStack {
            GeometryReader { geometry in
                let screenWidth = geometry.size.width
                let screenHeight = geometry.size.height
                
                // Adjust spacing and padding based on screen height
                let horizontalPadding = screenWidth * 0.10    // 5% of screen width
                let verticalSpacing = screenHeight * 0.018     // 2% of screen height
                let itemHeight = (screenHeight * 0.6) / 7     // Distribute 60% of screen height among 7 rows
                let columnSpacing = screenWidth * 0.05
                
                let columns = [
                    GridItem(.flexible(), spacing: columnSpacing),
                    GridItem(.flexible())
                ]
                
                
                VStack(spacing: verticalSpacing) {
                    
                    LazyVGrid(columns: columns, spacing: verticalSpacing) {
                        ForEach(allRegions) { region in
                            let isLocked = region.isPremium && !authViewModel.hasActiveSubscription

                            RegionView(
                                region: region.name,
                                isSelected: selectedRegions.contains(region.name),
                                isLocked: isLocked,
                                fontSize: screenHeight * 0.025,
                                padding: screenHeight * 0.025
                            ) {
                                if isLocked {
                                    // Show the paywall
                                    startSubscriptionProcess()
                                } else {
                                    // Toggle selection
                                    if selectedRegions.contains(region.name) {
                                        selectedRegions.remove(region.name)
                                    } else {
                                        selectedRegions.insert(region.name)
                                    }
                                }
                            }
                            .frame(height: itemHeight)
                        }
                    }
                    .padding(.horizontal, horizontalPadding)
                    
                    
                    Spacer(minLength: verticalSpacing)
                    
                    Button(action: {
                        if selectedRegions.isEmpty {
                            showingAlert = true
                        } else {
                            // Start a new session
                            sessionManager.startNewSession()
                            // Optionally, store selected regions in the session
                            // sessionManager.currentSession?.selectedRegions = Array(selectedRegions)
                            isActiveLink = true
                        }
                    }) {
                        Text("Start Study Session")
                            .foregroundColor(.black)
                            .bold()
                            .frame(width: screenWidth * 0.35, height: screenWidth * 0.2) // Adjust size based on screen width
                            .background(Color.lightLatte)
                            .clipShape(RoundedRectangle(cornerRadius: 10)) // Change to rounded rectangle
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10) // Change overlay to match the rounded rectangle
                                        .stroke(Color.lightMaroon, lineWidth: 2)
                                )
                                .shadow(radius: 5)
                    }
                    .padding(.bottom, 70)
                    .padding(.top, 1)
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("No Regions Selected"), message: Text("Please select a wine region to start learning."), dismissButton: .default(Text("OK")))
                    }
                    .navigationDestination(isPresented: $isActiveLink) {
                        // Pass the filtered flashcards to FlashcardView
                        FlashcardView(flashcards: flashcardManager.getFlashcards(for: selectedRegions))
                    }
                }
            
                
                .padding(.top, 65)
                .frame(minHeight: geometry.size.height)
                    }
                }
            .fullScreenCover(isPresented: $navigateToSessionSummary) {
                if let session = lastSession {
                    NavigationStack {
                        SessionSummaryView(session: session)
                    }
                    .accentColor(.latte)
                    .environment(\.colorScheme, .light)
                    
                } else {
                    Text("No session data available.")
                }
            }

                       .onReceive(sessionManager.$lastSession) { session in
                           if let session = session {
                               self.lastSession = session
                               self.navigateToSessionSummary = true
                               print("Received lastSession: \(session)")
                           }
                       }
            
                .navigationBarTitle("Select Regions", displayMode: .inline)
                .navigationBarItems(
                    leading:
                        NavigationLink(destination: SessionListView()) {
                            Text("History")
                                .font(.headline)
                                .foregroundColor(.latte)
                        },
                    trailing:
                                        Button(action: toggleSelection) {
                                            Text(getSelectionButtonTitle())
                                                .font(.headline)
                                        }
                )
            // Add the onAppear modifier here
                .onAppear {
                    selectedRegions.removeAll()  // Reset selected regions
                }
                
            
            
            // Present the PaywallView when needed
                        .sheet(isPresented: $isPaywallPresented) {
                            PaywallView()
                                .environmentObject(authViewModel)
                        }
        }
    }

 
    private func startSubscriptionProcess() {
            Purchases.shared.getOfferings { offerings, error in
                if let offerings = offerings, let offering = offerings.current {
                    if offering.availablePackages.isEmpty {
                        print("No packages available")
                    } else {
                        isPaywallPresented = true  // Trigger the paywall presentation
                    }
                } else if let error = error {
                    print("Error fetching offerings: \(error.localizedDescription)")
                }
            }
        }

        private func getSelectionButtonTitle() -> String {
            let totalRegions = authViewModel.hasActiveSubscription ? allRegions.count : freeRegions.count
            return selectedRegions.count == totalRegions ? "Deselect All" : "Select All"
        }

        private func toggleSelection() {
            if authViewModel.hasActiveSubscription {
                // For subscribed users, select/deselect all regions
                if selectedRegions.count == allRegions.count {
                    selectedRegions.removeAll()
                } else {
                    selectedRegions = Set(allRegions.map { $0.name })
                }
            } else {
                // For free users, select/deselect free regions
                if selectedRegions.count == freeRegions.count {
                    selectedRegions.removeAll()
                } else {
                    selectedRegions = Set(freeRegions)
                }
            }
        }
    }

    struct StudyView_Previews: PreviewProvider {
        static var previews: some View {
            StudyView()
                .environmentObject(AuthViewModel())
                .environmentObject(FlashcardManager.shared)
                .environmentObject(StudySessionManager.shared)
        }
    }
