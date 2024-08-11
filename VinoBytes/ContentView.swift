//
//  ContentView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var context
    @State private var selectedTab = 0

    init() {
        setupTabBarAppearance()
        
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            DashboardView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)

            StudyView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Study")
                }
                .tag(1)

            OpenAIChatView()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                    Text("Chat")
                }
                .tag(2)

            MyWinesView(isRootView: true)
                .tabItem {
                    Label("My Wines", systemImage: "wineglass")
                }
                .tag(3)

            ReferenceMainView()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("References")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

