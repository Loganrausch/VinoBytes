//
//  StudyCard+CoreDataProperties.swift
//  VinoDecks
//
//  Created by Logan Rausch on 3/13/24.
//
//

import Foundation
import CoreData


extension StudyCard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StudyCard> {
        return NSFetchRequest<StudyCard>(entityName: "StudyCard")
    }

    @NSManaged public var answer: String?
    @NSManaged public var question: String?
    @NSManaged public var region: String?
    @NSManaged public var id: String?
    @NSManaged public var boxNumber: Int16
    @NSManaged public var nextReviewDate: Date?

}

extension StudyCard : Identifiable {

}
