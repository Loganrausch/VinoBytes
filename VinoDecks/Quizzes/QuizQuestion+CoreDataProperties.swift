//
//  QuizQuestion+CoreDataProperties.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/12/24.
//
//

import Foundation
import CoreData


extension QuizQuestion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<QuizQuestion> {
        return NSFetchRequest<QuizQuestion>(entityName: "QuizQuestion")
    }

    @NSManaged public var questionText: String?
    @NSManaged public var answerOptions: NSObject?
    @NSManaged public var correctAnswer: String?
    @NSManaged public var region: String?

}

extension QuizQuestion : Identifiable {

}
