//
//  FlashcardView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/1/24.
//

import SwiftUI
import CoreData

struct FlashcardView: View {
    let deck: [Flashcard]
    
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject              private var sessionManager: StudySessionManager
    
    @StateObject private var vm: FlashcardViewModel
    
    // Init so we can inject deck into the VM
    init(flashcards: [Flashcard]) {
        self.deck = flashcards
        _vm = StateObject(wrappedValue: FlashcardViewModel(deck: flashcards))
    }
    
    var body: some View {
        GeometryReader { geo in
            let cardW = geo.size.width  * 0.83
            let cardH = geo.size.height * 0.68
            
            ZStack {
                mainStack(cardW: cardW, cardH: cardH, geo: geo)
                
                // Tutorial overlay
                if vm.showTutorialBubble { tutorialOverlay }
                
                // Feedback icon
                if vm.showFeedback {
                    Image(systemName: vm.feedbackIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(vm.feedbackIcon == "checkmark.circle.fill" ? .green : .orange)
                        .transition(.opacity)
                }
            }
        }
    }
    
    // MARK: - Main VStack
    @ViewBuilder
    private func mainStack(cardW: CGFloat, cardH: CGFloat, geo: GeometryProxy) -> some View {
        VStack {
            Spacer()
            VStack(spacing: 10) {
                Spacer()
                
                if vm.currentIndex < vm.flashcards.count {
                    regionHeader
                    
                    flashcardStack(cardW: cardW, cardH: cardH)
                        .offset(x: vm.swipeOffset)
                        .gesture(
                            DragGesture()
                                .onChanged { vm.dragChanged($0.translation.width) }
                                .onEnded   { vm.dragEnded($0.translation.width) }
                        )
                        .onTapGesture { vm.flip() }
                    
                    progressText
                } else {
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
                                        Button("End Session") {
                    vm.endButtonTapped()
                }
                    .font(.headline)
                    .foregroundColor(.latte)
                )
                .alert(isPresented: $vm.showEndSessionAlert) {
                    Alert(
                        title: Text("End Session"),
                        message: Text("Are you sure you want to end the session?"),
                        primaryButton: .destructive(Text("End Session")) {
                            vm.confirmEndSession()
                        },
                        secondaryButton: .cancel()
                    )
                }
                .onAppear { /* VM already shuffled */ }
            
            // 👉 Replace the old onChange with this 👇
                .onChange(of: vm.didFinishSession) { oldValue, newValue in
                    if !oldValue && newValue {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
        }
    }
    
    // MARK: - Sub‑views identical in styling
    private var regionHeader: some View {
        Text(vm.flashcards[vm.currentIndex].region)
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
    }
    
    private func flashcardStack(cardW: CGFloat, cardH: CGFloat) -> some View {
        ZStack {
            // Front
            FlashcardContent(text: vm.flashcards[vm.currentIndex].question)
                .frame(width: cardW, height: cardH)
                .background(Color.lightLatte)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(vm.borderColor, lineWidth: 3))
                .shadow(color: .gray, radius: 5)
                .rotation3DEffect(.degrees(vm.rotationAngle), axis: (0,1,0))
                .opacity(vm.showFront ? 1 : 0)
            
            // Back
            FlashcardContent(text: vm.flashcards[vm.currentIndex].answer)
                .frame(width: cardW, height: cardH)
                .background(Color.lightLatte)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(vm.borderColor, lineWidth: 3))
                .shadow(color: .gray, radius: 5)
                .rotation3DEffect(.degrees(vm.rotationAngle + 180), axis: (0,1,0))
                .opacity(vm.showFront ? 0 : 1)
        }
    }
    
    private var progressText: some View {
        Text("Card \(vm.currentIndex + 1) of \(vm.flashcards.count)")
            .font(.headline)
            .foregroundColor(.lightMaroon)
            .padding(.top, 15)
    }
    
    // MARK: - Tutorial overlay (unchanged visuals)
    private var tutorialOverlay: some View {
        ZStack {
            Color.black.opacity(0.65)
                .ignoresSafeArea()
                .onTapGesture { vm.markTutorialSeen() }
            
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
                
                Button("Got It!") {
                    vm.markTutorialSeen()
                }
                .font(.headline)
                .padding()
                .background(Color.lightMaroon)
                .foregroundColor(.lightLatte)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.6), radius: 6)
            }
            .padding()
            .background(Color.lightLatte)
            .cornerRadius(12)
            .padding()
        }
    }
}

// Preview unchanged
#Preview {
    let sample = [
        Flashcard(id: "1", region: "Burgundy",
                  question: "Main grape in Burgundy?", answer: "Pinot Noir / Chardonnay"),
        Flashcard(id: "2", region: "Bordeaux",
                  question: "Grape with bold tannins?", answer: "Cabernet Sauvignon")
    ]
    FlashcardView(flashcards: sample)
        .environmentObject(StudySessionManager.shared)
}
