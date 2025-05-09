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
            DashboardView()
                .tabItem {
                    Image(systemName: "chart.bar.doc.horizontal")
                    Text("Dashboard")
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
        appearance.backgroundColor = UIColor(named: "Maroon")
        
        
        // Applying the appearance settings
        UITabBar.appearance().standardAppearance = appearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

