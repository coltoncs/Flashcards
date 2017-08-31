//
//  Flashcard+CoreDataProperties.swift
//  Flashcards
//
//  Created by Colton Sweeney on 8/27/17.
//  Copyright © 2017 coltoncsweeney. All rights reserved.
//

import Foundation
import CoreData


extension Flashcard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Flashcard> {
        return NSFetchRequest<Flashcard>(entityName: "Flashcard");
    }

    @NSManaged public var question: String?
    @NSManaged public var answer: String?

}
