//
//  SignInView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var viewModel: SignInWithAppleViewModel
    @EnvironmentObject var subscriptionManager: SubscriptionManager // Add this line
    @State private var showingOnboarding = false

    var body: some View {
        NavigationView {
            ZStack {
                Color("Latte") // Replace with any Color or custom color defined in your assets
                    .edgesIgnoringSafeArea(.all) // Make sure it covers the entire screen
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    // Icon Image
                        Image("vinobytes_logo_final") // Use a system icon or your custom image
                        .resizable() // Makes the image resizable
                        .frame(width: 120, height: 120) // Set the desired size
                        .padding(.bottom, 20)
                       
                    
                    Text("Welcome to VinoBytes")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                  
                    
                    SignInWithAppleButtonView(
                        onRequest: { request in
                            // Additional request configurations if needed
                            // For example, request.email = true, etc.
                        },
                        onCompletion: { result in
                            switch result {
                            case .success(let authorization):
                                viewModel.handleSignIn(authorization: authorization)
                            case .failure(let error):
                                viewModel.handleError(error)
                            }
                        }
                    )
                    .frame(width: 200, height: 50)
                    
                    
                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    
                    Spacer()
                }
                
                .padding()
                .navigationBarHidden(true)
            
                    }
                }
            }
        }



struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(SignInWithAppleViewModel()) // Mock ViewModel for preview
            .environmentObject(SubscriptionManager())      // Mock SubscriptionManager for preview
    }
}
