//
//  StudyView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/8/24.
//

import SwiftUI
import RevenueCatUI     // only needed for PaywallView

struct StudyView: View {

    // MARK: - Dependencies
    @EnvironmentObject private var auth: AuthViewModel
    @StateObject       private var vm: StudyViewModel

    // MARK: - Local view‑only state
    @State private var showEmptyAlert = false

    // MARK: - Init
    init(auth: AuthViewModel) {
        _vm = StateObject(wrappedValue: StudyViewModel(auth: auth))
    }

    // MARK: - Body
    var body: some View {
        NavigationStack {
            content
                .navigationBarTitle("Select Regions", displayMode: .inline)
                .toolbar { leadingAndTrailingButtons }
                .sheet(isPresented: $vm.isShowingPaywall) {
                    PaywallView().environmentObject(auth)
                }
                .navigationDestination(isPresented: $vm.isStartingSession) {
                    FlashcardView(flashcards: vm.flashcardsForSelection())
                }
                .fullScreenCover(item: $vm.lastSession) { session in
                    NavigationStack { SessionSummaryView(session: session) }
                        .accentColor(.latte)
                        .environment(\.colorScheme, .light)
                }
        }
    }

    // MARK: - Main content (identical layout & styling)
    @ViewBuilder
    private var content: some View {
        GeometryReader { geometry in
            let screenWidth  = geometry.size.width
            let screenHeight = geometry.size.height
            let paddingH     = screenWidth * 0.10
            let vSpacing     = screenHeight * 0.018
            let itemHeight   = (screenHeight * 0.6) / 7
            let columns = [
                GridItem(.flexible(), spacing: screenWidth * 0.05),
                GridItem(.flexible())
            ]

            VStack(spacing: vSpacing) {

                // ── Region grid ─────────────────────────────
                LazyVGrid(columns: columns, spacing: vSpacing) {
                    ForEach(vm.allRegions) { region in
                        let isLocked = vm.isRegionLocked(region)

                        RegionView(
                            region:     region.name,
                            isSelected: vm.selectedRegions.contains(region.name),
                            isLocked:   isLocked,
                            fontSize:   screenHeight * 0.025,
                            padding:    screenHeight * 0.025
                        ) { vm.tap(region: region) }
                        .frame(height: itemHeight)
                    }
                }
                .padding(.horizontal, paddingH)

                Spacer(minLength: vSpacing)

                // ── Start button (original styling) ────────
                Button(action: {
                    if vm.selectedRegions.isEmpty {
                        showEmptyAlert = true
                    } else {
                        vm.start()
                    }
                }) {
                    Text("Start Study Session")
                        .foregroundColor(.black)
                        .bold()
                        .frame(width: screenWidth * 0.35,
                               height: screenWidth * 0.20)
                        .background(Color.lightLatte)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.lightMaroon, lineWidth: 2)
                        )
                        .shadow(radius: 5)
                }
                .padding(.bottom, 70)
                .padding(.top, 1)
                .alert(isPresented: $showEmptyAlert) {
                    Alert(
                        title: Text("No Regions Selected"),
                        message: Text("Please select a wine region to start learning."),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
            .padding(.top, 65)
            .frame(minHeight: screenHeight)
        }
    }

    // MARK: - Toolbar buttons (unchanged look)
    @ToolbarContentBuilder
    private var leadingAndTrailingButtons: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            NavigationLink(destination: SessionListView()) {
                Text("History")
                    .font(.headline)
                    .foregroundColor(.latte)
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(vm.selectionButtonTitle()) {
                vm.toggleSelectAll()
            }
            .font(.headline)
        }
    }
}

#Preview {
    let auth = AuthViewModel()
    StudyView(auth: auth)
        .environmentObject(auth)
        .environmentObject(FlashcardManager.shared)
        .environmentObject(StudySessionManager.shared)
}
