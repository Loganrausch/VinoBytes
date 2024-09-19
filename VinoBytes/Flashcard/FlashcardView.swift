//
//  FlashcardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI
import CoreData

struct FlashcardView: View {
    var selectedRegions: [String] = []
    @Environment(\.managedObjectContext) private var viewContext
    
    private var flashcardsFetchRequest: FetchRequest<StudyCard>
    private var flashcards: FetchedResults<StudyCard> { flashcardsFetchRequest.wrappedValue }
    
    @State private var currentFlashcardIndex = 0
    @State private var rotationAngle: Double = 0 // Track the rotation angle
    @State private var showFront: Bool = true // Manage which side to show
    @State private var swipeOffset: CGFloat = 0
    @State private var currentRegion: String? = nil
    @State private var showFeedback: Bool = false
    @State private var feedbackIcon: String = ""
    @State private var borderColor: Color = .lightMaroon // Default border color for the card
    @State private var feedbackOpacity: Double = 0 // Manage the opacity of feedback
    @State private var showSpacedRepetitionDetail = false
    
    init(selectedRegions: [String]) {
        self.selectedRegions = selectedRegions
        self.flashcardsFetchRequest = FetchRequest<StudyCard>(
            entity: StudyCard.entity(),
            sortDescriptors: [],
            predicate: NSPredicate(format: "region IN %@ AND nextReviewDate <= %@", selectedRegions, Date() as NSDate)
        )
    }
    
    var body: some View {
        VStack {
            
            
            if flashcards.isEmpty {
                // Display message when there are no flashcards due for review
                Text("No flashcards are due for review right now.")
                    .font(.headline)
                    .foregroundColor(.lightMaroon)
                    .padding()
                
                Text("Try selecting a different region or check back later.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            } else {
                Text(currentRegion ?? "Unknown Region")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.lightMaroon)
                    .padding(.horizontal)  // Keep horizontal padding for spacing around the text
                    .frame(height: 35)  // Set a fixed height for the box
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.lightMaroon, lineWidth: 2)
                    )
                    .padding(.bottom, 30)
                
                ZStack(alignment: .center) {
                    ForEach(flashcards.indices, id: \.self) { index in
                        if index == currentFlashcardIndex {
                            Group {
                                // Display the question side of the card
                                FlashcardContent(text: flashcards[index].question)
                                    .background(Color.white)
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
                                FlashcardContent(text: flashcards[index].answer)
                                    .background(Color.white)
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
                            .animation(.easeInOut(duration: 0.3), value: swipeOffset) // Animate the swipe offset
                        }
                    }
                    
                    if showFeedback {
                        Image(systemName: feedbackIcon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(feedbackIcon == "checkmark.circle.fill" ? .green : .orange)
                            .transition(.opacity)
                            .animation(.easeInOut(duration: 0.5))
                    }
                }
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
                                .padding(.bottom, 30)
                            }
                        }
        .padding()
                .navigationBarTitle("Flashcard Study")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button(action: {
                    showSpacedRepetitionDetail.toggle()
                }) {
                    Image(systemName: "info.circle")
                        .font(.headline) // Adjust icon size if necessary
                        .foregroundColor(.latte) // Customize icon color if desired
                })
                .sheet(isPresented: $showSpacedRepetitionDetail) {
                    SpacedRepetitionDetailView() // Your sheet view content
                }
                .onAppear {
                    updateCurrentRegion()
                }
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
            guard !flashcards.isEmpty else { return }

            if abs(width) > 100 {
                let knewAnswer = width > 0
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
                        
                        // Check if the current index is within bounds before reviewing
                        if self.currentFlashcardIndex < self.flashcards.count {
                            PersistenceController.reviewFlashcard(
                                flashcard: self.flashcards[self.currentFlashcardIndex],
                                knewAnswer: knewAnswer,
                                context: self.viewContext
                            )
                        }
                        
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
        print("Current index before increment: \(currentFlashcardIndex), Total cards: \(flashcards.count)")
        
        currentFlashcardIndex += 1
        
        if currentFlashcardIndex >= flashcards.count {
            print("Reached end of flashcards. Resetting index to 0.")
            currentFlashcardIndex = 0 // Reset to start
        } else {
            print("Moving to next flashcard. New index: \(currentFlashcardIndex)")
        }
        
        updateCurrentRegion()
        rotationAngle = 0 // Reset rotation angle
        showFront = true // Ensure front is shown for the next card
        swipeOffset = 0
        
    }

            private func updateCurrentRegion() {
                if flashcards.isEmpty {
                    currentRegion = nil
                } else {
                    currentRegion = flashcards[currentFlashcardIndex].region
                }
            }
        }




struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView(selectedRegions: ["Europe", "Asia"])
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
