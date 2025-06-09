//
//  LaunchingContentView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

// LaunchingContentView.swift

import SwiftUI

struct LaunchingContentView: View {
    @Binding var isShowingLaunchScreen: Bool
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        Group {
            if isShowingLaunchScreen {
                LaunchScreen(isShowingLaunchScreen: $isShowingLaunchScreen)
                    .environment(\.colorScheme, .light)
            } else if authViewModel.isLoading {
                // Show a loading indicator while checking authentication and subscription status
                ProgressView("Loading...")
                    .progressViewStyle(CircularProgressViewStyle())
            } else {
                RootView()
                    .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
                    .environment(\.colorScheme, .light)
            }
        }
    }
}

struct LaunchingContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchingContentView(isShowingLaunchScreen: .constant(true))
            .environmentObject(AuthViewModel())
    }
}
