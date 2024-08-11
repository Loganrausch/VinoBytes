//
//  FlashcardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//
import Foundation
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
            Spacer()

            if flashcards.isEmpty {
                Text("No flashcards for the selected regions.")
            } else {
                Text(flashcards[currentFlashcardIndex].region ?? "Unknown Region") // Region displayed above the card
                                    .font(.headline)
                                    .foregroundColor(.maroon)
                                    .padding(.bottom, 10)
                ZStack {
                    ForEach(flashcards.indices, id: \.self) { index in
                        if index == currentFlashcardIndex { // Show only the current card
                            Group {
                                FlashcardContent(text: flashcards[index].question)
                                    .opacity(isFlipped ? 0 : 1)

                                FlashcardContent(text: flashcards[index].answer)
                                    .opacity(isFlipped ? 1 : 0)
                                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0)) // Rotate the answer content by 180 degrees
                            }
                            .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0)) // Rotate for the flip effect
                            .offset(x: swipeOffset)
                            .animation(.easeInOut, value: swipeOffset) // Apply animation to the swipe effect
                        }
                    }
                }
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            swipeOffset = gesture.translation.width
                        }
                        .onEnded { gesture in
                            if abs(swipeOffset) > 100 {
                                // Swipe detected
                                let knewAnswer = swipeOffset > 0
                                PersistenceController.reviewFlashcard(flashcard: flashcards[currentFlashcardIndex], knewAnswer: knewAnswer, context: viewContext)
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    swipeOffset = swipeOffset > 0 ? 1000 : -1000 // Move card off-screen
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    moveToNextFlashcard()
                                }
                            } else {
                                withAnimation(.easeInOut) {
                                    swipeOffset = 0 // Return card to center
                                }
                            }
                        }
                )
                .onTapGesture {
                    withAnimation {
                        isFlipped.toggle()
                    }
                }
                
                Spacer()
                
                HStack {
                                    Image(systemName: "arrow.left")
                                        .foregroundColor(.green)
                                        .font(.largeTitle)
                                        .padding(.leading)
                                    Spacer()
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.red)
                                        .font(.largeTitle)
                                        .padding(.trailing)
                                }
                                .padding(.top, 5)


                Spacer()
            }
        }
        .padding()
        .background(Color.clear)
        .navigationBarTitle("Flashcard Study")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func moveToNextFlashcard() {
        // Reset the state for the next card
        currentFlashcardIndex = (currentFlashcardIndex + 1) % flashcards.count
        isFlipped = false
        swipeOffset = 0
    }
}

struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView(selectedRegions: ["Europe", "Asia"])
    }
}
