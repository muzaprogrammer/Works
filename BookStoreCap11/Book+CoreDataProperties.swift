//
//  Book+CoreDataProperties.swift
//  BookStoreCap11
//
//  Created by Development on 5/5/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var tittle: String?
    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var yearPublished: Int32
    @NSManaged public var author: Author?

}
