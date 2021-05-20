//
//  Informacion+CoreDataProperties.swift
//  parcial42561842015
//
//  Created by Development on 5/19/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation
import CoreData


extension Informacion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Informacion> {
        return NSFetchRequest<Informacion>(entityName: "Informacion")
    }

    @NSManaged public var frases: String?

}
