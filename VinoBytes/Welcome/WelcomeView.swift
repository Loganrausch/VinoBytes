//
//  WelcomeScreen.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/21/24.
//


import SwiftUI

struct WelcomeView: View {
    @StateObject private var vm = WelcomeViewModel()
    @Binding var hasSeenWelcomeView: Bool
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            // Top Navigation Bar
            HStack {
                Spacer()
                if vm.selectedTab < vm.totalTabs - 1 {
                    Button("Skip") {
                        vm.skipToLast()
                    }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top, 30)
                }
            }
            .frame(height: 80)
            .background(Color("Maroon"))
            
            // Page‐style TabView
            TabView(selection: $vm.selectedTab) {
                ForEach(Array(0..<vm.totalTabs), id: \.self) { index in
                    WelcomeScreen(
                        index: index,
                        isSelected: $vm.selectedTab,
                        hasSeenWelcomeView: $hasSeenWelcomeView
                    )
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(maxHeight: .infinity)
            
            // Custom Page Indicator
            ZStack {
                Rectangle()
                    .fill(Color("Maroon"))
                    .frame(height: 70)
                HStack(spacing: 10) {
                    ForEach(0..<vm.totalTabs, id: \.self) { idx in
                        Circle()
                            .fill(idx == vm.selectedTab ? Color.latte : Color.gray)
                            .frame(width: 10, height: 10)
                    }
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .background(Color.lightLatte)
        .edgesIgnoringSafeArea(.all)
    }
}
