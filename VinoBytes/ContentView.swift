//
//  ContentView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject var wineData = WineData() // Create an instance of WineData


    var body: some View {
        TabView {
            NavigationView {
                
            DashboardView(wineData: wineData) // Pass wineData to DashboardView
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Dashboard")
            }
            
            StudyView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Study")
                }
            
            QuizMenu()
                .tabItem {
                    Image(systemName: "pencil.line")
                    Text("Quizzes")
                }
            
            MyWinesView(wineData: wineData)
                .tabItem {
                    Image(systemName: "wineglass")
                    Text("My Wines")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}
