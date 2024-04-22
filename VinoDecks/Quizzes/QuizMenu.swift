//
//  QuizzesView.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/3/24.
//

import Foundation

import SwiftUI

import CoreData

struct QuizMenu: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: QuizView(questions: loadQuestions(for: "France"))) {
                        QuizBox(label: "France")
                    }
                    NavigationLink(destination: QuizView(questions: loadQuestions(for: "Italy"))) {
                        QuizBox(label: "Italy")
                    }
                }
                HStack {
                    NavigationLink(destination: QuizView(questions: loadQuestions(for: "Spain"))) {
                        QuizBox(label: "Spain")
                    }
                    NavigationLink(destination: QuizView(questions: loadQuestions(for: "USA"))) {
                        QuizBox(label: "USA")
                    }
                }
                Spacer()
            }
            .padding()
            .navigationBarTitle("Quizzes")
        }
    }
    
    private func loadQuestions(for region: String) -> [QuizQuestion] {
        let fetchRequest: NSFetchRequest<QuizQuestion> = QuizQuestion.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "region == %@", region)
        
        do {
            let questions = try PersistenceController.shared.container.viewContext.fetch(fetchRequest)
            return questions
        } catch {
            print("Error fetching questions for region \(region): \(error)")
            return []
        }
    }
    
    
    struct QuizBox: View {
        var label: String
        
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 128/255, green: 0, blue: 0))
                    .frame(width: 150, height: 150)
                Text(label)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
    
}

struct QuizMenu_Previews: PreviewProvider {
    static var previews: some View {
        QuizMenu()
    }
}
