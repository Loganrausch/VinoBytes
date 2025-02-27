//
//  MyWinesView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//
import SwiftUI
import CoreData
import RevenueCat
import RevenueCatUI

struct MyWinesView: View {
    @Environment(\.managedObjectContext) private var context
    @EnvironmentObject var authViewModel: AuthViewModel  // Access subscription status
    @EnvironmentObject var refreshNotifier: RefreshNotifier
    @State private var searchText: String = ""
    @State private var isAddingWine = false  // State to trigger navigation to the WineFormView
    @State private var showUpgradeAlert = false  // State to show upgrade alert
    @State private var isPaywallPresented = false  // Controls the presentation of the paywall
    var isRootView: Bool
    
    
    let maxFreeWines = 5  // Maximum number of free wines allowed

    @FetchRequest(
            entity: WineEntity.entity(),
            sortDescriptors: [
                NSSortDescriptor(keyPath: \WineEntity.region, ascending: true),
                NSSortDescriptor(keyPath: \WineEntity.producer, ascending: true)
            ],
            animation: .default)
        var winesFetched: FetchedResults<WineEntity>

    var body: some View {
            Group {
                if isRootView {
                    NavigationStack {
                        winesList
                            .navigationDestination(isPresented: $isAddingWine) {
                                WineFormView(wineEntity: nil)
                            }
                    }
                } else {
                    winesList
                        .navigationDestination(isPresented: $isAddingWine) {
                            WineFormView(wineEntity: nil)
                        }
                }
            }
            .onAppear {
                // Refresh logic
                if refreshNotifier.needsRefresh {
                    context.refreshAllObjects() // Refresh all objects in the context
                    refreshNotifier.needsRefresh = false
                }
            }
            .alert(isPresented: $showUpgradeAlert) {
                       Alert(
                           title: Text("Upgrade Required"),
                           message: Text("You've added the maximum of \(maxFreeWines) wines. Upgrade to add unlimited wines."),
                           primaryButton: .default(Text("Upgrade")) {
                               startSubscriptionProcess()
                           },
                           secondaryButton: .cancel()
                       )
                   }
                   .sheet(isPresented: $isPaywallPresented) {
                       PaywallView()
                           .environmentObject(authViewModel)
                   }
        }

    private var winesList: some View {
        ZStack {
            List {
                Section {
                    
                    TextField("Search wines...", text: $searchText)
                        .padding(10)
                        .padding(.horizontal)
                        .background(Color.lightLatte.opacity(0.8))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.lightMaroon.opacity(1), lineWidth: 2) // Customize color and width
                        )
                    
                        .padding(.top)
                        .accentColor(.lightMaroon)
                    
                
                }
                
                
                
                .listRowSeparator(.hidden)
             

        
                ForEach(filteredWinesGrouped, id: \.0) { region, wines in
                    Section(header: Text(region)
                        .textCase(nil)
                        .padding(.leading, -7)
                        .foregroundColor(.maroon) // Change the color as needed
                    
                    ) {
                        ForEach(wines, id: \.objectID) { wine in
                            NavigationLink(destination: WineDetailView(wineEntity: wine)) {
                                Text("\(wine.vintage ?? "Unknown Vintage") \(wine.producer ?? "Unknown Producer") \(wine.wineName ?? "Unnamed Wine")")
                            }
                        }
                        .onDelete { offsets in
                            deleteWines(at: offsets, in: wines)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("My Wines")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        if canAddMoreWines() {
                                       isAddingWine = true
                                   } else {
                                       showUpgradeAlert = true  // Show alert prompting to upgrade
                                   }
                               }) {
                                   Text("Add Wine")
                                       .font(.headline)
                            }
                        }
                    }
            
            .safeAreaInset(edge: .bottom) {
                   if shouldShowBanner {
                       bannerView
                   }
               }
            
            // Conditional Overlay Message
                   if filteredWinesGrouped.isEmpty {
                       VStack {
                           Spacer()
                           Text("Add a wine to get started.")
                               .foregroundColor(.gray)
                               .italic()
                               .multilineTextAlignment(.center)
                               .padding()
                           Spacer()
                       }
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                       
                   }
               }
           }
    
    private var winesLeft: Int {
        max(0, maxFreeWines - winesFetched.count)
    }
    
    private var shouldShowBanner: Bool {
        !authViewModel.hasActiveSubscription
    }


    private var bannerView: some View {
        VStack {
            if winesFetched.count < maxFreeWines {
                // Display wines added out of max free wines
                Text("You have added \(winesFetched.count) out of \(maxFreeWines) free wines.")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.lightMaroon)
                    .padding(.bottom, 5)
            } else {
                // Display message that the user has reached the limit
                Text("Maximum limit of \(maxFreeWines) free wines reached.")
                    .font(.subheadline)
                    .foregroundColor(.lightMaroon)
                    .padding(.bottom, 5)
                
                
                // Display the Upgrade button with maroon outline
                           Button(action: {
                               startSubscriptionProcess()
                           }) {
                               Text("Go Premium - Unlimited Wines")
                                   .font(.headline)
                                   .foregroundColor(Color("LightMaroon"))
                                   .padding()
                                   .frame(maxWidth: .infinity)
                                   .background(Color.clear)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 10)
                                           .stroke(Color("LightMaroon"), lineWidth: 2)
                                   )
                           }
                       }
                   }
                   .padding()
                   .background(Color("Latte"))
               }



    
    private func startSubscriptionProcess() {
        Purchases.shared.getOfferings { offerings, error in
            if let offerings = offerings, let offering = offerings.current {
                if offering.availablePackages.isEmpty {
                    print("No packages available")
                } else {
                    // Present the paywall or subscription view
                    // You might need to set a state variable to present a sheet
                    isPaywallPresented = true
                }
            } else if let error = error {
                print("Error fetching offerings: \(error.localizedDescription)")
            }
        }
    }

    
    private func canAddMoreWines() -> Bool {
        if authViewModel.hasActiveSubscription {
            return true  // Subscribed users can add unlimited wines
        } else {
            // Fetch the number of wines the user has added
            let wineCount = winesFetched.count
            return wineCount < maxFreeWines
        }
    }


    private func deleteWines(at offsets: IndexSet, in wines: [WineEntity]) {
        offsets.map { wines[$0] }.forEach(context.delete)
        try? context.save()
    }

    var filteredWinesGrouped: [(String, [WineEntity])] {
        let filteredWines: [WineEntity] = searchText.isEmpty ? Array(winesFetched) : winesFetched.filter { wine in
            wine.producer?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.wineName?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.region?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.grape?.lowercased().contains(searchText.lowercased()) ?? false ||
            wine.vintage?.lowercased().contains(searchText.lowercased()) ?? false
        }
        return Dictionary(grouping: filteredWines, by: { $0.region ?? "Unknown" })
            .map { ($0.key, $0.value) }
            .sorted { $0.0 < $1.0 }
    }
}


