//
//  HeroHomeView.swift
//  VinoBytes
//
//  Created by Logan Rausch on 6/8/25.
//

import SwiftUI
import CoreData

struct HeroHomeView: View {
    @EnvironmentObject var userProfile: UserProfileViewModel // To access user first name
    @Environment(\.managedObjectContext) private var context
    
    @Binding var selectedTab: Int
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    @State private var animateGreeting = false
    @State private var showNameInputSheet = false

    @State private var showOverlay = false
    @State private var showLearnMore = false
    @State private var pulse = false
    @State private var showDash = false
    @State private var didStartPulse = false
    
    private var isShortScreen: Bool {
        UIScreen.main.bounds.height <= 670
    }

    var body: some View {
        ZStack {
            // ── Burgundy gradient background ──
            LinearGradient(
                gradient: Gradient(colors: [Color("Latte").opacity(0.8),
                                            Color("Latte").opacity(0.9),
                                            Color("Latte")]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("VinoBytes")
                    .font(.title3.bold())
                    .foregroundColor(Color("Burgundy"))
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                
                
                // If no name is set, add extra vertical space.
                if userProfile.firstName.isEmpty {
                    Spacer().frame(height: 10) // Adjust height as needed
                } else {
                    // Display the greeting if the first name is available.
                    Text("Hi, \(userProfile.firstName)!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .opacity(animateGreeting ? 1 : 0)
                        .onAppear {
                            withAnimation(.easeIn(duration: 0.6)) {
                                animateGreeting = true
                            }
                        }
                }
                
                HStack {
                    Text("You studied")
                    Text("\(StudySessionManager.shared.flashcardsStudiedThisWeek)")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.burgundy) // Optional to match your theme
                    Text("flashcards this week.")
                }
                .font(.title3)
                .padding(.top, 10)
                
                
              
                Spacer()
                
                Button {
                    selectedTab = 1
                } label: {
                    Text("Study\nFlashcards")
                        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 2)
                        .font(.system(size: 28, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Latte"))
                        .frame(width: 220)
                        .padding(.vertical, isShortScreen ? 90 : 120)
                        .background(
                            ZStack {
                                RoundedRectangle(cornerRadius: 32)
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [
                                                Color("Burgundy").opacity(1),
                                                Color("Burgundy").opacity(0.93)
                                            ]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                                
                                RoundedRectangle(cornerRadius: 32)
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(stops: [
                                                .init(color: Color.white.opacity(0.12), location: 0.0),
                                                .init(color: Color.clear, location: 0.5)
                                            ]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                                
                                RoundedRectangle(cornerRadius: 32)
                                    .stroke(Color.white.opacity(0.5), lineWidth: 4)
                                    .blur(radius: 5)
                                    .offset(x: -4, y: -4)
                                
                                RoundedRectangle(cornerRadius: 32)
                                    .stroke(Color.black.opacity(0.38), lineWidth: 6)
                                    .blur(radius: 5)
                                    .offset(x: 3, y: 3)
                                    .mask(
                                        RoundedRectangle(cornerRadius: 32)
                                            .fill(Color.black)
                                    )
                            }
                        )
                        .cornerRadius(32)
                }
                .scaleEffect(pulse ? 1.05 : 1)
                .shadow(color: .black.opacity(pulse ? 0.4 : 0.15), radius: pulse ? 20 : 8, y: 6)
               
                Spacer()
                
                Button {
                    showDash = true
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: "chart.bar.xaxis")
                            .font(.body.weight(.semibold))
                        Text("View Dashboard")
                            .font(.body.weight(.semibold))
                    }
                    .foregroundColor(Color("Latte"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        Capsule()
                            .fill(Color("Burgundy").opacity(0.95))
                            .shadow(radius: 4, y: 2)
                    )
                    .overlay(
                        Capsule()
                            .stroke(Color("Burgundy"), lineWidth: 1)
                    )
                    .shadow(color: Color.white.opacity(0.4), radius: 1, x: -1, y: -1)   // subtle edge light
                    .shadow(color: Color.black.opacity(0.4), radius: 8, x: 0, y: 6)     // deeper cast shadow
                }
                .padding(.bottom, 40)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Group {
                if showOverlay {
                    UnifiedOnboardingOverlayView(isVisible: $showOverlay)
                        .transition(.opacity)
                        .zIndex(1)
                }
            }
        }
        
        .onAppear {
            userProfile.loadUserProfile(context: context)

            if !didStartPulse {
                didStartPulse = true
                withAnimation(.easeInOut(duration: 1.2).repeatForever(autoreverses: true)) {
                    pulse = true
                }
            }

            if !hasSeenOnboarding {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    withAnimation {
                        showOverlay = true
                    }
                }
            }
        }
        
        
        .sheet(isPresented: $showDash) {
            DashboardView()
                .presentationDetents([.height(675)])
                .presentationDragIndicator(.visible)
        }
        
                       // inject everything it expects
        .onChange(of: showOverlay) { newValue in
                   if !newValue {
                       hasSeenOnboarding = true
                   }
               }
        .onReceive(NotificationCenter.default.publisher(for: .didResetOnboarding)) { _ in
            hasSeenOnboarding = false
            withAnimation {
                showOverlay = true
            }
        }
    }
}

extension Notification.Name {
    static let didResetOnboarding = Notification.Name("didResetOnboarding")
}
