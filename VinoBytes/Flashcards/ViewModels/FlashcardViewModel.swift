//
//  FlashcardViewModel.swift
//  VinoBytes
//
//  Created by Logan Rausch on 5/8/25.
//

import Foundation
import SwiftUI      // for `Color`
import Combine

/// View‑model that drives a single flashcard study session.
final class FlashcardViewModel: ObservableObject {

    // ────────────────────────────────
    // MARK: - Published state
    // ────────────────────────────────
    @Published var flashcards: [Flashcard] = []
    @Published var currentIndex: Int       = 0

    // Card animation & styling
    @Published var rotationAngle: Double   = 0
    @Published var showFront               = true
    @Published var swipeOffset: CGFloat    = 0
    @Published var borderColor: Color      = .lightMaroon

    // Feedback / tutorial
    @Published var showFeedback            = false
    @Published var feedbackIcon            = ""
    @Published var showTutorialBubble      = false
    @Published var showEndSessionAlert     = false

    // Navigation trigger
    @Published var didFinishSession        = false

    // ────────────────────────────────
    // MARK: - Dependencies
    // ────────────────────────────────
    private let sessionManager: StudySessionManager

    // ────────────────────────────────
    // MARK: - Init
    // ────────────────────────────────
    init(deck: [Flashcard],
         sessionManager: StudySessionManager = .shared) {

        self.sessionManager = sessionManager
        configure(deck: deck)
    }

    // ────────────────────────────────
    // MARK: - Public intents (called by View)
    // ────────────────────────────────
    func flip() {
        let duration = 0.4
        withAnimation(.linear(duration: duration)) {
            rotationAngle += 180
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + duration / 2) {
            self.showFront.toggle()
        }
    }

    func dragChanged(_ translation: CGFloat) {
        swipeOffset   = translation
        borderColor   = translation > 0 ? .green : .orange
    }

    func dragEnded(_ translation: CGFloat) {
        guard !flashcards.isEmpty else { return }
        if abs(translation) > 100 {
            handleSwipe(right: translation > 0)
        } else {
            withAnimation(.spring()) {
                swipeOffset  = 0
                borderColor  = .lightMaroon
            }
        }
    }

    func endButtonTapped() {
        showEndSessionAlert = true
    }

    func confirmEndSession() {
        sessionManager.endCurrentSession()
        didFinishSession = true
        incrementReviewCounter()
    }

    // Tutorial helpers
    func markTutorialSeen() {
        UserDefaults.standard.set(true, forKey: "hasSeenFlashcardTutorial")
        showTutorialBubble = false
    }

    // ────────────────────────────────
    // MARK: - Private logic
    // ────────────────────────────────
    private func configure(deck: [Flashcard]) {
        flashcards         = deck.shuffled()
        currentIndex       = 0
        rotationAngle      = 0
        showFront          = true
        swipeOffset        = 0
        borderColor        = .lightMaroon
        showFeedback       = false

        let seenTutorial   = UserDefaults.standard.bool(forKey: "hasSeenFlashcardTutorial")
        showTutorialBubble = !seenTutorial
    }

    private func handleSwipe(right: Bool) {
        let knewAnswer = right

        sessionManager.addFlashcardResult(
            flashcard: flashcards[currentIndex],
            wasCorrect: knewAnswer
        )

        feedbackIcon = knewAnswer ? "checkmark.circle.fill"
                                  : "xmark.circle.fill"
        showFeedback = true

        withAnimation(.easeOut(duration: 0.8)) {
            swipeOffset  = right ? 1000 : -1000
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            self.showFeedback = false
            self.moveToNext()
        }
    }

    private func moveToNext() {
        currentIndex += 1
        if currentIndex >= flashcards.count {
            sessionManager.endCurrentSession()
            didFinishSession = true
            return
        }
        rotationAngle = 0
        showFront     = true
        withAnimation(.none) { swipeOffset = 0 }
        borderColor   = .lightMaroon
    }

    private func incrementReviewCounter() {
        let defaults = UserDefaults.standard
        let key      = "sessionEndCount"
        let newCount = defaults.integer(forKey: key) + 1
        defaults.setValue(newCount, forKey: key)

        if [5, 20, 50, 100].contains(newCount) {
            ReviewRequestHelper.requestReviewIfAppropriate()
        }
    }
}
