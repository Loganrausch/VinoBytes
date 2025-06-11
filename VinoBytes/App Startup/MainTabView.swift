//
//  ContentView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI

struct MainTabView: View {
    @Environment(\.managedObjectContext) private var context
    @EnvironmentObject var openAIManager: OpenAIManager
    @EnvironmentObject var flashcardManager: FlashcardManager
    @EnvironmentObject var studySessionManager: StudySessionManager
    @EnvironmentObject var refreshNotifier: RefreshNotifier
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var selectedTab = 0
    
    
    init() {
        setupTabBarAppearance()
        
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HeroHomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            StudyView(auth: authViewModel)
                .tabItem {
                    Image(systemName: "square.3.layers.3d.top.filled")
                    Text("Flashcards")
                }
                .tag(1)
            
            ChatView( openAIManager: openAIManager)
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                    Text("Vino Chat")
                }
                .tag(2)
            MyWinesView(isRootView: true, auth: authViewModel)
                .tabItem {
                    Label("My Wines", systemImage: "wineglass")
                }
                .tag(3)
            
            ReferenceMainView()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Library")
                }
                .tag(4)
        }
        .accentColor(Color("Latte"))
    }
    
    private func setupTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()

        // ── Your palette ───────────────
        let burgundy = UIColor(named: "Burgundy") ?? .systemRed
        let latte    = UIColor(named: "Latte")    ?? .white
        let latteDim = latte.withAlphaComponent(0.55)          // unselected shade

        // ── Background ────────────────
        appearance.backgroundColor = burgundy

        // ── Selected tab (icon + title) ─
        appearance.stackedLayoutAppearance.selected.iconColor  = latte
        appearance.stackedLayoutAppearance.selected.titleTextAttributes  = [.foregroundColor: latte]

        // ── Unselected tab (icon + title) ─
        appearance.stackedLayoutAppearance.normal.iconColor  = latteDim
        appearance.stackedLayoutAppearance.normal.titleTextAttributes  = [.foregroundColor: latteDim]

        // Repeat for inline / compact so iPad + landscape obey the same colours
        appearance.inlineLayoutAppearance   = appearance.stackedLayoutAppearance
        appearance.compactInlineLayoutAppearance = appearance.stackedLayoutAppearance

        // ── Apply globally ─────────────
        UITabBar.appearance().standardAppearance   = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        // (You can keep or drop this; appearance now controls it)
        UITabBar.appearance().tintColor            = latte
    }
}

