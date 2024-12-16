//
//  FlashcardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI
import CoreData


struct FlashcardView: View {
    var flashcards: [Flashcard]
    
    @Environment(\.presentationMode) var presentationMode

    
    @EnvironmentObject var sessionManager: StudySessionManager
    
    @State private var shuffledFlashcards: [Flashcard] = []
    @State private var currentFlashcardIndex = 0
    @State private var rotationAngle: Double = 0 // Track the rotation angle
    @State private var showFront: Bool = true // Manage which side to show
    @State private var swipeOffset: CGFloat = 0
    @State private var showFeedback: Bool = false
    @State private var feedbackIcon: String = ""
    @State private var borderColor: Color = .lightMaroon // Default border color for the card
    @State private var feedbackOpacity: Double = 0 // Manage the opacity of feedback
    @State private var showTutorialBubble: Bool = false // Controls the visibility of the overlay
    @State private var showEndSessionAlert = false
    @State private var session: StudySession?
    
    
    
    var body: some View {
        GeometryReader { geometry in
            let cardWidth = geometry.size.width * 0.83 // Adjust the multiplier as needed
            let cardHeight = geometry.size.height * 0.68 // Adjust the multiplier as needed\
            
            ZStack {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                    Spacer()
                    VStack(spacing: 10) {
                        Spacer()
                        
                        // Updated Condition
                        if !shuffledFlashcards.isEmpty && currentFlashcardIndex < shuffledFlashcards.count {
                            
                            
                            // Current Region Display
                            Text(shuffledFlashcards[currentFlashcardIndex].region)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.lightMaroon)
                                .padding(.horizontal)
                                .frame(height: 35)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.lightMaroon, lineWidth: 2)
                                )
                                .padding(.bottom, 30)
                                .padding(.top, 10)
                            
                            
                            
                            ZStack(alignment: .center) {
                                
                                // Display the question side of the card
                                FlashcardContent(text: shuffledFlashcards[currentFlashcardIndex].question)
                                    .frame(width: cardWidth, height: cardHeight)
                                    .background(Color.lightLatte)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(borderColor, lineWidth: 3) // Dynamic border color
                                    )
                                    .shadow(color: .gray, radius: 5, x: 0, y: 0) // Adding shadow here
                                    .rotation3DEffect(
                                        .degrees(rotationAngle),
                                        axis: (x: 0, y: 1, z: 0)
                                    )
                                
                                
                                    .opacity(showFront ? 1 : 0) // Show front only when showFront is true
                                
                                
                                
                                // Display the answer side of the card
                                FlashcardContent(text: shuffledFlashcards[currentFlashcardIndex].answer)
                                    .frame(width: cardWidth, height: cardHeight)
                                    .background(Color.lightLatte)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(borderColor, lineWidth: 3) // Dynamic border color
                                    )
                                    .shadow(color: .gray, radius: 5, x: 0, y: 0) // Adding shadow here
                                    .rotation3DEffect(
                                        .degrees(rotationAngle + 180),
                                        axis: (x: 0, y: 1, z: 0)
                                    )
                                
                                    .opacity(showFront ? 0 : 1) // Show back only when showFront is false
                                
                            }
                            
                            
                            .offset(x: swipeOffset)
                            
                            .gesture(
                                DragGesture()
                                    .onChanged { gesture in
                                        swipeOffset = gesture.translation.width
                                        borderColor = gesture.translation.width > 0 ? .green : .orange
                                    }
                                    .onEnded { gesture in
                                        handleSwipe(gesture.translation.width)
                                    }
                            )
                            .onTapGesture {
                                flipCard()
                            }
                            
                            // Progress Indicator
                            
                            Text("Card \(currentFlashcardIndex + 1) of \(shuffledFlashcards.count)")
                                .font(.headline)
                                .foregroundColor(.lightMaroon)
                                .padding(.top, 15)
                            
                            
                        } else {
                            // Handle the case where there are no flashcards
                            Text("No Flashcards Available")
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    
                    Spacer()
                    
                        .frame(maxWidth: .infinity)
                        .padding()
                        .navigationBarTitle("Flashcard Study")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(trailing:
                            Button(action: {
                                endSession()
                            }) {
                                Text("End Session")
                                    .font(.headline)
                                    .foregroundColor(.latte)
                            }
                        )
                    
                        .alert(isPresented: $showEndSessionAlert) {
                            Alert(
                                title: Text("End Session"),
                                message: Text("Are you sure you want to end the session?"),
                                primaryButton: .destructive(Text("End Session")) {
                                    sessionManager.endCurrentSession()
                                    // Dismiss FlashcardView
                                    presentationMode.wrappedValue.dismiss()
                                    
                                    // Increment the session end counter and request review if needed
                                        incrementSessionEndCounterAndMaybeRequestReview()
                                },
                                secondaryButton: .cancel()
                            )
                        }

                    
                        .onAppear {
                            checkFirstLaunch() // Check if we need to show the tutorial
                            shuffledFlashcards = flashcards.shuffled() // Initialize shuffledFlashcards with the input flashcards
                            currentFlashcardIndex = 0 // Reset the current index
                        }
                    
                }
                
                Spacer()
                
                // New Overlay for Tutorial
                if showTutorialBubble {
                    ZStack {
                        Color.black.opacity(0.65)
                            .ignoresSafeArea()
                            .onTapGesture {
                                // Dismiss when tapping outside the overlay
                                markTutorialAsSeen()
                            }
                        
                        VStack(spacing: 20) {
                            Text("Tap a card to flip it")
                                .font(.title)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                            
                            Text("Swipe **right** if you know the card and **left** if you don't. End the session when you are done to save and view your results!")
                                .font(.title3)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            Button(action: {
                                markTutorialAsSeen()
                            }) {
                                Text("Got It!")
                                    .font(.headline)
                                    .padding()
                                    .background(Color.lightMaroon)
                                    .foregroundColor(.lightLatte)
                                    .cornerRadius(10)
                                    .shadow(color: .black.opacity(0.6), radius: 6)
                            }
                        }
                        
                        .padding()
                        .background(Color.lightLatte)
                        .cornerRadius(12)
                        .padding()
                        
                        
                    }
                }
                
                // Show feedback icon on top of flashcard
                if showFeedback {
                    Image(systemName: feedbackIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(feedbackIcon == "checkmark.circle.fill" ? .green : .orange)
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 0.5), value: showFeedback)
                }
            }
        }
    }
    
            
            // MARK: - Helper Functions
            
    private func endSession() {
        showEndSessionAlert = true
    }
    
    private func incrementSessionEndCounterAndMaybeRequestReview() {
            let defaults = UserDefaults.standard
            let sessionEndCountKey = "sessionEndCount"
            
            let newCount = defaults.integer(forKey: sessionEndCountKey) + 1
            defaults.setValue(newCount, forKey: sessionEndCountKey)
            
            // Define your milestones for ending sessions
            let milestones = [5, 20, 50, 100]
            
            if milestones.contains(newCount) {
                ReviewRequestHelper.requestReviewIfAppropriate()
            }
        }
            
            
            // Check if the tutorial has been shown before
            private func checkFirstLaunch() {
                let hasSeenTutorial = UserDefaults.standard.bool(forKey: "hasSeenFlashcardTutorial")
                showTutorialBubble = !hasSeenTutorial
            }
            
            // Mark the tutorial as seen
            private func markTutorialAsSeen() {
                UserDefaults.standard.set(true, forKey: "hasSeenFlashcardTutorial")
                showTutorialBubble = false
            }
            
            
            private func flipCard() {
                let animationDuration = 0.4
                withAnimation(.linear(duration: animationDuration)) {
                    rotationAngle += 180
                }
                
                // Toggle the side to show after half the animation duration
                DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration / 2) {
                    withAnimation(.none) { // Shorter animation for opacity change
                        showFront.toggle()
                    }
                }
            }
            
            private func handleSwipe(_ width: CGFloat) {
                guard !shuffledFlashcards.isEmpty && currentFlashcardIndex < shuffledFlashcards.count else { return }
                
                if abs(width) > 100 {
                    let knewAnswer = width > 0
                    
                    
                    // Record the result
                           sessionManager.addFlashcardResult(
                               flashcard: shuffledFlashcards[currentFlashcardIndex],
                               wasCorrect: knewAnswer
                           )
                    
                    
                    feedbackIcon = knewAnswer ? "checkmark.circle.fill" : "xmark.circle.fill"
                    showFeedback = true
                    feedbackOpacity = 0 // Start from transparent
                    
                    withAnimation(.easeOut(duration: 0.8)) {
                        swipeOffset = width > 0 ? 1000 : -1000
                        feedbackOpacity = 1 // Fade in the feedback text
                    }
                    
                    // Delay to ensure the card moves off screen before showing feedback
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        self.showFeedback = true
                        self.borderColor = .lightMaroon // Reset border color
                        
                        // Further delay to show the feedback icon briefly before moving to the next card
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            self.showFeedback = false
                            self.moveToNextFlashcard()
                        }
                        
                        
                    }
                } else {
                    withAnimation(.spring()) {
                        swipeOffset = 0 // Return card to center if not swiped far enough
                        borderColor = .lightMaroon // Reset border color
                    }
                }
            }
            
    private func moveToNextFlashcard() {
        print("Current index before increment: \(currentFlashcardIndex), Total cards: \(shuffledFlashcards.count)")

        currentFlashcardIndex += 1

        if currentFlashcardIndex >= shuffledFlashcards.count {
            sessionManager.endCurrentSession()
            // Dismiss FlashcardView
            presentationMode.wrappedValue.dismiss()
            return
        }


        rotationAngle = 0 // Reset rotation angle
        showFront = true // Ensure front is shown for the next card
        // Reset swipeOffset without animation

        withAnimation(.none) {
            swipeOffset = 0
        }
    }
    
    
            
            
    private func shuffleFlashcards() {
        shuffledFlashcards = flashcards.shuffled() // Assign a new shuffled array
        currentFlashcardIndex = 0
        rotationAngle = 0
        showFront = true
        swipeOffset = 0
    }
        
    }

// Add a preview provider with sample flashcards
struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        // Sample flashcards for preview
        let sampleFlashcards = [
            Flashcard(id: "1", region: "Burgundy", question: "What is the main grape variety in Burgundy?", answer: "Pinot Noir and Chardonnay"),
            Flashcard(id: "2", region: "Bordeaux", question: "Which grape is known for its bold tannins?", answer: "Cabernet Sauvignon"),
            Flashcard(id: "3", region: "Australia", question: "Which country is famous for Shiraz?", answer: "Australia")
        ]
        
        FlashcardView(flashcards: sampleFlashcards)
            .previewLayout(.sizeThatFits) // Adjust the preview layout if necessary
    }
}
