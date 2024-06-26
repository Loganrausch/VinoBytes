//
//  CustomTabBarView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/22/24.
//

import SwiftUI
import Foundation

struct CustomTabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer() // Pushes the content up
            
            // Here we switch views based on the selected tab
            switch selectedTab {
            case 0:
                DashboardView(wineData: WineData())
            case 1:
                StudyView()
            case 2:
                OpenAIChatView()
            case 3:
                MyWinesView(wineData: WineData(), isRootView: true)
            case 4:
                ReferenceMainView()
            default:
                Text("Selection does not exist")
            }
            
            HStack(spacing: 28) {
                ForEach(0..<5) { index in
                    Button(action: {
                        self.selectedTab = index
                    }) {
                        Image(systemName: getIconName(index: index))
                            .font(.title)
                            .foregroundColor(selectedTab == index ? Color("Maroon") : Color("Latte"))
                            .frame(width: 50, height: 50)
                            .background(selectedTab == index ? Color("Latte") : Color.clear)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color("Maroon"), lineWidth: selectedTab == index ? 3 : 0)
                            )
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20) // Safe area bottom padding
            .background(Color("Maroon").edgesIgnoringSafeArea(.all)) // Maroon color background
        }
        .edgesIgnoringSafeArea(.bottom) // Optional for extending to the bottom edge
    }
    
    func getIconName(index: Int) -> String {
        switch index {
        case 0:
            return "house.fill"
        case 1:
            return "book"
        case 2:
            return "figure.wave"
        case 3:
            return "wineglass"
        case 4:
            return "globe.desk"
        default:
            return ""
        }
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView()
    }
}
