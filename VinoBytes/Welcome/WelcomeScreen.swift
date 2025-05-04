//
//  WelcomeScreen.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/2/25.
//

// WelcomeScreen.swift
import SwiftUI
import RevenueCatUI

/// Welcome screen view with minimal logic in View and delegated to ViewModel
struct WelcomeScreen: View {
    let index: Int
    @Binding var isSelected: Int
    @Binding var hasSeenWelcomeView: Bool
    @EnvironmentObject var authViewModel: AuthViewModel

    @StateObject private var viewModel = WelcomeScreenViewModel()

    // MARK: - Content Data Arrays
    private let titles = [
        "Dashboard", "Flashcards", "Vino Chat",
        "My Wines", "Library", "iCloud Sync",
        "Welcome to VinoBytes"
    ]
    private let sfSymbolNames = [
        "chart.bar.doc.horizontal", "square.3.layers.3d.top.filled",
        "bubble.left.and.bubble.right", "wineglass",
        "books.vertical", "icloud", "door.french.open"
    ]
    private let symbolColors = Array(repeating: Color.lightMaroon, count: 7)
    private let descriptions = [
        "Access your learning tools all in one convenient place.",
        "Master over 1,500 interactive flashcards.",
        "Get instant answers with our wine chat powered by OpenAI.",
        "Log and track the wines you taste for easy reference as you study.",
        "Extensive information on grapes, regions, pairings, flaws and more.",
        "Automatically sync your data with iCloud integration.",
        "Wine Education, Byte-Sized."
    ]

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 30) {
                Spacer()

                // Title & Description
                VStack(alignment: .center, spacing: 20) {
                    Text(titles[index])
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)

                    Text(descriptions[index])
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 30)

                // Icon (hidden on last page if compact)
                if index != 6 || geometry.size.width > 400 {
                    Image(systemName: sfSymbolNames[index])
                        .resizable()
                        .scaledToFit()
                        .frame(
                            width: calculateIconSize(from: geometry),
                            height: calculateIconSize(from: geometry)
                        )
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(symbolColors[index])
                        .padding(.bottom, 30)
                        .fontWeight(.thin)
                }

                // Last Screen Buttons & Messages
                if index == 6 {
                    VStack(spacing: 20) {
                        Button(action: viewModel.startFreeTrial) {
                            Text("Start Free Trial")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.latte)
                                .padding()
                                .frame(minWidth: 250)
                                .background(Color.lightMaroon)
                                .cornerRadius(10)
                                .shadow(radius: 6)
                        }

                        Button(action: { viewModel.proceedToLimitedVersion(hasSeenWelcomeView: $hasSeenWelcomeView) }) {
                            Text("Access Basic Features")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.lightMaroon)
                                .padding()
                                .frame(minWidth: 250)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.lightMaroon, lineWidth: 2)
                                )
                        }

                        if authViewModel.isLoading {
                            ProgressView("Restoring Purchase...")
                        } else {
                            Button(action: { viewModel.restorePurchases(authViewModel: authViewModel) }) {
                                Text("Restore Purchase")
                                    .bold()
                                    .font(.headline)
                                    .foregroundColor(.lightMaroon)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                            }
                        }

                        Text("Free trial available for new subscribers only.")
                            .font(.body)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal)
                            .padding(.bottom, 5)

                        if let errorMessage = authViewModel.errorMessage {
                            Text(errorMessage)
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                        } else if authViewModel.hasActiveSubscription {
                            Text("Purchases restored successfully!")
                                .foregroundColor(.lightMaroon)
                                .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                } else {
                    Spacer().frame(height: 70)
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .opacity(viewModel.contentOpacity)
            .sheet(isPresented: $viewModel.isPaywallPresented) {
                PaywallView()
            }
            .onChange(of: isSelected) { _, newValue in
                if newValue == index { viewModel.fadeIn() }
                else { viewModel.fadeOut() }
            }
            .onAppear {
                if isSelected == index { viewModel.fadeIn() }
            }
        }
    }

    // MARK: - Helper
    private func calculateIconSize(from geometry: GeometryProxy) -> CGFloat {
        switch geometry.size.width {
        case ...320: return 150
        case 321...375: return 200
        default: return 250
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    @State static var isSelected = 6
    @State static var hasSeenWelcomeView = false

    static var previews: some View {
        WelcomeScreen(
            index: 6,
            isSelected: $isSelected,
            hasSeenWelcomeView: $hasSeenWelcomeView
        )
        .environmentObject(AuthViewModel())
    }
}
