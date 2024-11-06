//
//  SignInView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

import SwiftUI
import AuthenticationServices

struct SignInView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @Environment(\.openURL) var openURL  // Environment value to handle URL opening
    
    
    var body: some View {
        NavigationView {
            ZStack {
                if authViewModel.isLoading {
                    ProgressView("Signing In...")
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    VStack(spacing: 20) {
                        Spacer()
                        
                        // Logo
                        Image("vinobytes_logo_final")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .padding(.bottom, 10)
                        
                        // Welcome Text
                        Text("VinoBytes")
                            .font(.title)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.bottom, 1)
                        
                        // Tagline
                        Text("Wine Education in Small Bytes")
                            .font(.body)
                            .foregroundColor(.black)
                            .padding(.bottom, 40)
                        
                        // Sign In with Apple Button
                        SignInWithAppleButton(
                            .signIn,
                            onRequest: { request in
                                request.requestedScopes = [.fullName, .email]
                            },
                            onCompletion: { result in
                                switch result {
                                case .success(let authorization):
                                    authViewModel.handleSignIn(authorization: authorization)
                                case .failure(let error):
                                    authViewModel.handleSignInError(error)
                                }
                            }
                        )
                        .signInWithAppleButtonStyle(.black)
                        .frame(width: 200, height: 50)
                        
                        // Error Message
                        if let errorMessage = authViewModel.errorMessage {
                            Text(errorMessage)
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        
                        Spacer()
                        // Links for Privacy Policy and Terms and Conditions
                        HStack {
                            Button("Privacy Policy") {
                                // Action to show Privacy Policy
                                openURL(URL(string: "https://vinobytes.com/privacy-policy")!)
                            }
                            .foregroundColor(.black)
                            
                            Text("|")
                                .foregroundColor(.gray)
                            
                            Button("Terms and Conditions") {
                                // Action to show Terms and Conditions
                                openURL(URL(string: "https://vinobytes.com/terms-and-conditions")!)
                            }
                            .foregroundColor(.black)
                        }
                        .padding()
                    }
                    .padding()
                    .navigationBarHidden(true)
                }
            }
            .preferredColorScheme(.light)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(AuthViewModel())
    }
}
