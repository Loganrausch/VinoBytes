//
//  MyWinesView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/2/24.
//
import SwiftUI
import CoreData
import RevenueCatUI

struct MyWinesView: View {
    // Environment values the view still needs later
    @Environment(\.managedObjectContext) private var envContext
    @EnvironmentObject private var auth:    AuthViewModel
    @EnvironmentObject private var refresh: RefreshNotifier

    @StateObject private var vm: MyWinesViewModel
    var isRootView: Bool

    /// Designated init ­– you may pass specific instances or fall back to env defaults
    init(
        isRootView: Bool = true,
        auth:       AuthViewModel,
        context:    NSManagedObjectContext? = nil,
        refresh:    RefreshNotifier?        = nil
    ) {
        self.isRootView = isRootView

        // Use the supplied instances if given, otherwise the environment ones later
        _vm = StateObject(wrappedValue: MyWinesViewModel(
            context: context  ?? PersistenceController.shared.container.viewContext,
            auth:    auth,
            refresh: refresh  ?? RefreshNotifier()
        ))
    }

    var body: some View {
        content
            .alert(isPresented: $vm.showUpgradeAlert) { upgradeAlert }
            .sheet(isPresented: $vm.isShowingPaywall) { PaywallView().environmentObject(auth) }
    }

    // MARK: - Content with conditional nav stack
    @ViewBuilder
    private var content: some View {
        if isRootView {
            NavigationStack { wineList.navigationDestination(isPresented: $vm.isAddingWine) {
                WineFormView(wineEntity: nil)
            } }
        } else {
            wineList.navigationDestination(isPresented: $vm.isAddingWine) {
                WineFormView(wineEntity: nil)
            }
        }
    }

    // MARK: - Main list (layout unchanged)
    private var wineList: some View {
        ZStack {
            List {
                searchBarSection
                ForEach(vm.groupedWines, id: \.0) { region, wines in
                    Section(header: Text(region)
                        .textCase(nil)
                        .padding(.leading, -7)
                        .foregroundColor(.maroon)) {
                        ForEach(wines, id: \.objectID) { wine in
                            NavigationLink(destination: WineDetailView(wineEntity: wine)) {
                                Text("\(wine.vintage ?? "Unknown") \(wine.producer ?? "Unknown") \(wine.wineName ?? "Unnamed Wine")")
                            }
                        }
                        .onDelete { vm.delete(at: $0, in: wines) }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("My Wines")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add Wine", action: vm.addTapped).font(.headline)
                }
            }
            .safeAreaInset(edge: .bottom) { if vm.shouldShowBanner { banner } }

            if vm.groupedWines.isEmpty {
                VStack { Spacer()
                    Text("Add a wine to get started.")
                        .foregroundColor(.gray).italic().multilineTextAlignment(.center)
                    Spacer()
                }
            }
        }
    }

    // MARK: - Sub‑views identical in styling
    private var searchBarSection: some View {
        Section {
            TextField("Search wines...", text: $vm.searchText)
                .padding(10).padding(.horizontal)
                .background(Color.lightLatte.opacity(0.8))
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.lightMaroon, lineWidth: 2))
                .padding(.top)
                .accentColor(.lightMaroon)
        }.listRowSeparator(.hidden)
    }

    private var banner: some View {
        VStack {
            if vm.wineCount < 5 {
                Text("You have added \(vm.wineCount) out of 5 free wine entries.")
            } else {
                Text("Maximum limit of 5 free wine entries reached.")
                Button("Go Pro - Unlimited Wines") { vm.startSubscriptionProcess() }
                    .font(.headline)
                    .foregroundColor(Color("LightMaroon"))
                    .padding().frame(maxWidth: .infinity)
                    .background(Color.clear)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightMaroon"), lineWidth: 2))
            }
        }
        .font(.subheadline)
        .padding()
        .frame(maxWidth: .infinity)
        .foregroundColor(.lightMaroon)
        .background(Color("Latte"))
    }

    private var upgradeAlert: Alert {
        Alert(
            title: Text("Upgrade Required"),
            message: Text("You've added the maximum of 5 wines. Upgrade to add unlimited wines."),
            primaryButton: .default(Text("Upgrade")) { vm.startSubscriptionProcess() },
            secondaryButton: .cancel()
        )
    }
}
