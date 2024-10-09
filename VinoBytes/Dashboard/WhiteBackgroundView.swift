//
//  WhiteBackgroundView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/5/24.
//

import Foundation
import SwiftUI

struct WhiteBackgroundView: View {
    @State private var originalBrightness: CGFloat = UIScreen.main.brightness
    @State private var brightness: CGFloat = UIScreen.main.brightness
    @State private var showMessage: Bool = false // Default to false

    init() {
        // Check UserDefaults to see if the message has been shown before
        if UserDefaults.standard.bool(forKey: "hasShownMessage") == false {
            _showMessage = State(initialValue: true) // Only set to true if not shown before
        }
    }

    var body: some View {
        ZStack {
            VStack {
                
                Capsule()
                                    .frame(width: 60, height: 6)
                                    .foregroundColor(.secondary)
                                    .padding(10)
                
                Spacer() // This will push everything below it down.
                
                

                CustomSlider(value: $brightness, range: 0...1, thumbColor: .lightMaroon)
                    .frame(width: 300, height: 44)
                    .onChange(of: brightness) { newValue, _ in
                        UIScreen.main.brightness = newValue
                    }
                    .padding(.bottom, 50)
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            
            .overlay(
                Image("Napkin_Texture")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                    .allowsHitTesting(false)
            )
            .onAppear {
                // Store the current brightness when the view appears
                originalBrightness = UIScreen.main.brightness
            }
            .onDisappear {
                // Restore the original brightness when the view disappears
                UIScreen.main.brightness = originalBrightness
            }

            // Conditionally show a dimmed overlay with a message
            if showMessage {
                            Color.black.opacity(0.6)
                                .edgesIgnoringSafeArea(.all)
                                .overlay(
                                    VStack {
                                        Text("For optimal wine evaluation, use this digital napkin. The white background ensures you see the true color of your wine.")
                                            .font(.title)
                                            .multilineTextAlignment(.center)
                                            .bold()
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color.clear.opacity(0.8))
                                            .cornerRadius(10)
                                            .padding()

                                        
                                        Text("Tap anywhere to continue")
                                            .font(.title2)
                                            .foregroundColor(.white)
                                            .bold()
                                            .padding()
                                            .background(Color.clear.opacity(0.5))
                                            .cornerRadius(10)
                                            .padding()
                                    }
                                )
                                .onTapGesture {
                                    showMessage = false
                                    UserDefaults.standard.set(true, forKey: "hasShownMessage")
                                }
                        }
                    }
        .preferredColorScheme(.light) // Enforce light mode
                }
            }

            struct WhiteBackgroundView_Previews: PreviewProvider {
                static var previews: some View {
                    WhiteBackgroundView()
                }
            }
