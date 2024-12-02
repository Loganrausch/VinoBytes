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
                // Top bar with capsule and info button
                HStack {
                    Spacer()
                    
                    Capsule()
                        .frame(width: 60, height: 6)
                        .foregroundColor(.secondary)
                        .padding(.leading)

                    Spacer()

                    Button(action: {
                        showMessage = true
                    }) {
                        Image(systemName: "info.circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.lightMaroon)
                    }
                    .padding(.trailing, 16)
                }
                .padding(.top, 12)

                Spacer() // Pushes content down

                CustomSlider(value: $brightness, range: 0...1, thumbColor: .lightMaroon)
                    .frame(width: 300, height: 44)
                    .onChange(of: brightness) { newValue, _ in
                        UIScreen.main.brightness = newValue
                    }
                Text("Caution: Keep your glass at a safe distance to avoid spills on your device.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.maroon)
                    .bold()
                    .background(Color.clear.opacity(0.5))
                    .cornerRadius(10)
                    .padding(.bottom, 30)
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
                originalBrightness = UIScreen.main.brightness
            }
            .onDisappear {
                UIScreen.main.brightness = originalBrightness
            }

            // Conditionally show a dimmed overlay with a message
            if showMessage {
                Color.black.opacity(0.6)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        VStack {
                            Text("For accurate wine assessment, use this digital napkin as a backdrop to observe your wine’s true color.")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .bold()
                                .foregroundColor(.latte)
                                .padding()
                                .background(Color.clear.opacity(0.8))
                                .cornerRadius(10)
                                .padding()
                            
                    
                            
                            Text("Tap anywhere to continue")
                                .font(.title2)
                                .foregroundColor(.latte)
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
        .preferredColorScheme(.light)
    }
}

struct WhiteBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        WhiteBackgroundView()
    }
}
