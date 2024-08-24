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
    @State private var isFlipped = false
    @State private var swipeOffset: CGFloat = 0
    @State private var currentRegion: String? = nil
    @State private var showFeedback: Bool = false
    @State private var feedbackIcon: String = ""
    @State private var borderColor: Color = .maroon // Default border color for the card
    @State private var feedbackOpacity: Double = 0 // Manage the opacity of feedback
    
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
                    .foregroundColor(.maroon)
                    .padding()
                
                Text("Try selecting a different region or check back later.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            } else {
                Text(currentRegion ?? "Unknown Region")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.maroon)
                    .padding(.horizontal)  // Keep horizontal padding for spacing around the text
                    .frame(height: 35)  // Set a fixed height for the box
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.maroon, lineWidth: 2)
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
                                    .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                                    .offset(x: swipeOffset)
                                    .animation(.easeInOut, value: swipeOffset)
                                    .opacity(isFlipped ? 0 : 1) // Hide when flipped
                                
                                // Display the answer side of the card
                                FlashcardContent(text: flashcards[index].answer)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(borderColor, lineWidth: 3) // Dynamic border color
                                    )
                                    .shadow(color: .gray, radius: 5, x: 0, y: 0) // Adding shadow here
                                    .rotation3DEffect(.degrees(isFlipped ? 360 : 180), axis: (x: 0, y: 1, z: 0)) // Correct the orientation for the answer
                                    .offset(x: swipeOffset)
                                    .animation(.easeInOut, value: swipeOffset)
                                    .opacity(isFlipped ? 1 : 0) // Show only when flipped
                            }
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
                    withAnimation {
                        isFlipped.toggle()
                    }
                }
                
                
                .padding(.bottom, 30)
                
            }
        }
        .padding()
        .navigationBarTitle("Flashcard Study")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            if !flashcards.isEmpty {
                currentRegion = flashcards[currentFlashcardIndex].region
            } else {
                currentRegion = nil
            }
        }
    }
    
    private func handleSwipe(_ width: CGFloat) {
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
                showFeedback = true
                borderColor = .maroon // Reset border color
                
                // Further delay to show the feedback icon briefly before moving to the next card
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    showFeedback = false
                    
                    PersistenceController.reviewFlashcard(flashcard: flashcards[currentFlashcardIndex], knewAnswer: knewAnswer, context: viewContext)
                    
                    moveToNextFlashcard()
                }
            }
        } else {
            withAnimation(.spring()) {
                swipeOffset = 0 // Return card to center if not swiped far enough
                borderColor = .maroon // Reset border color
            }
        }
    }
    
    private func moveToNextFlashcard() {
        currentFlashcardIndex += 1
        
        // Check if we've exhausted all flashcards
        if currentFlashcardIndex >= flashcards.count {
            isFlipped = false
            swipeOffset = 0
            currentRegion = nil  // Clear the region display
        } else {
            // Update the view for the next flashcard
            isFlipped = false
            swipeOffset = 0
            currentRegion = flashcards[currentFlashcardIndex].region
        }
    }
}

struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView(selectedRegions: ["Europe", "Asia"])
    }
}
