//
//  WelcomeScreen.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/2/25.
//
import SwiftUI
import CoreData

struct UnifiedOnboardingOverlayView: View {
    @Binding var isVisible: Bool
    @Environment(\.managedObjectContext) private var context
    @EnvironmentObject var userProfile: UserProfileViewModel

    enum OnboardingStep {
        case name, intro, learnMore
    }

    @State private var step: OnboardingStep = .name
    @State private var firstName: String = ""
    @FocusState private var isFocused: Bool
    @State private var currentPage = 0

    private let titles = [
        "Dashboard", "Flashcards", "Vino Chat",
        "My Wines", "Library", "iCloud Sync"
    ]

    private let descriptions = [
        "Access your learning tools all in one convenient place.",
        "Master over 1,500 interactive flashcards.",
        "Get instant answers with our wine chat powered by OpenAI.",
        "Log and track the wines you taste for easy reference as you study.",
        "Extensive information on grapes, regions, pairings, flaws and more.",
        "Automatically sync your data with iCloud integration."
    ]

    private let sfSymbols = [
        "chart.bar.doc.horizontal", "square.3.layers.3d.top.filled",
        "bubble.left.and.bubble.right", "wineglass",
        "books.vertical", "icloud"
    ]

    var body: some View {
        ZStack {
            Color.black.opacity(0.75).ignoresSafeArea()

            VStack(spacing: 28) {
                switch step {
                case .name:
                    nameInputCard
                case .intro:
                    introCard
                case .learnMore:
                    learnMoreCarousel
                }
            }
        }
        .preferredColorScheme(.light)
    }

    private var nameInputCard: some View {
        VStack(spacing: 20) {
            Text("Welcome to VinoBytes")
                .font(.title.bold())
                .foregroundColor(.latte)

            Text("Personalize Your Experience")
                .font(.body)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            ZStack(alignment: .leading) {
                if !isFocused && firstName.isEmpty {
                    Text("First Name")
                        .foregroundColor(.latte.opacity(0.7))
                        .padding(.leading, 12)
                }

                TextField("First Name", text: $firstName)
                    .focused($isFocused)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.burgundy.opacity(0.75), lineWidth: 1.5)
                    )
                    .tint(Color.burgundy)
            }
            .padding(.horizontal, 20)

            HStack(spacing: 20) {
                // Skip Button (on left)
                Button {
                    userProfile.saveUserProfile(firstName: "Guest", context: context)
                    step = .intro
                } label: {
                    Text("Skip")
                        .font(.headline)
                        .foregroundColor(.burgundy)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 12)
                        .background(.thinMaterial)
                        .clipShape(Capsule())
                        .shadow(radius: 3.5)
                }
            

                // Save Button (on right)
                Button {
                    let name = firstName.trimmingCharacters(in: .whitespaces)
                    userProfile.saveUserProfile(firstName: name.isEmpty ? "Guest" : name, context: context)
                    step = .intro
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.burgundy)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 12)
                        .background(.thinMaterial)
                        .clipShape(Capsule())
                        .shadow(radius: 3.5)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 20)
        }
        .padding(32)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(Color.white.opacity(0.1), lineWidth: 1)
                )
        )
        .padding()
    }

    private var introCard: some View {
        VStack(spacing: 20) {
            Text("Welcome to VinoBytes")
                .font(.title.bold())
                .foregroundColor(.latte)
                .multilineTextAlignment(.center)

            Text("Tap the Study Flashcards button to start learning with byte-sized precision.")
                .font(.body)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Button {
                withAnimation {
                    isVisible = false
                }
            } label: {
                Text("Got it")
                    .font(.headline)
                    .foregroundColor(.burgundy)
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    .background(.thinMaterial)
                    .clipShape(Capsule())
                    .shadow(radius: 3.5)
            }
        

            Button {
                withAnimation {
                    step = .learnMore
                }
            } label: {
                Text("Learn more about VinoBytes")
                    .font(.callout.weight(.semibold))
                    .underline()
                    .foregroundColor(.latte.opacity(0.85))
            }
            .padding(.top, 8)
        }
        .padding(32)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(Color.white.opacity(0.1), lineWidth: 1)
                )
        )
        .padding()
    }

    private var learnMoreCarousel: some View {
        VStack(spacing: 32) {
            TabView(selection: $currentPage) {
                ForEach(0..<titles.count, id: \.self) { index in
                    learnCard(
                        title: titles[index],
                        subtitle: descriptions[index],
                        systemImage: sfSymbols[index]
                    )
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .frame(height: 420)
            .onAppear {
                UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "Burgundy")
                UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
            }

            Button("Got it") {
                withAnimation {
                    isVisible = false
                }
            }
            .font(.headline)
            .foregroundColor(.burgundy)
            .padding(.horizontal, 32)
            .padding(.vertical, 12)
            .background(.thinMaterial)
            .clipShape(Capsule())
            .shadow(radius: 3.5)
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 40)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.white.opacity(0.1)))
        )
        .padding()
    }

    private func learnCard(title: String, subtitle: String, systemImage: String) -> some View {
        VStack(spacing: 20) {
            Image(systemName: systemImage)
                .font(.system(size: 50, weight: .bold))
                .foregroundColor(.burgundy)

            Text(title)
                .font(.title.bold())
                .foregroundColor(.latte)
                .multilineTextAlignment(.center)

            Text(subtitle)
                .font(.body)
                .foregroundColor(.latte)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity)
    }
}
