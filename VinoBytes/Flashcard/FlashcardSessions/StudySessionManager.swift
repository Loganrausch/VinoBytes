//
//  StudySessionManager.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/7/24.
//

import Foundation
import CoreData
import Combine

class StudySessionManager: ObservableObject {
    static let shared = StudySessionManager()
    
    @Published var currentSession: StudySession?
    @Published var lastSession: StudySession? // Add this line
    private var context: NSManagedObjectContext
    
    private init() {
        self.context = PersistenceController.shared.container.viewContext
    }
    
    func startNewSession() {
        let session = StudySession(context: context)
        session.id = UUID()
        session.date = Date()
        session.totalQuestions = 0
        session.correctAnswers = 0
        currentSession = session
    }
    
    func endCurrentSession() {
           do {
               try context.save()
               // Capture the session before ending it
               lastSession = currentSession
               print("Session ended. lastSession: \(String(describing: lastSession))")
               currentSession = nil
           } catch {
               print("Failed to save session: \(error)")
           }
       }
    
    func addFlashcardResult(flashcard: Flashcard, wasCorrect: Bool) {
        guard let session = currentSession else { return }
        
        let result = FlashcardResult(context: context)
        result.question = flashcard.question
        result.answer = flashcard.answer
        result.region = flashcard.region
        result.wasCorrect = wasCorrect
        result.session = session
        
        // Update session summary data
        session.totalQuestions += 1
        if wasCorrect {
            session.correctAnswers += 1
        }
    }
    
    // Fetch past sessions
    func fetchPastSessions() -> [StudySession] {
        let request: NSFetchRequest<StudySession> = StudySession.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: false)
        request.sortDescriptors = [sortDescriptor]
        do {
            return try context.fetch(request)
        } catch {
            print("Failed to fetch sessions: \(error)")
            return []
        }
    }
    
    func deleteSession(_ session: StudySession) {
        context.delete(session)
        do {
            try context.save()
        } catch {
            print("Failed to delete session: \(error)")
        }
    }
}
