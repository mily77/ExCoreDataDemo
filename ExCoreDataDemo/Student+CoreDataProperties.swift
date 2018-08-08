//
//  Student+CoreDataProperties.swift
//  ExCoreDataDemo
//
//  Created by emily on 2018/8/8.
//  Copyright © 2018年 emily. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var height: Double
    @NSManaged public var id: Int32
    @NSManaged public var name: String?

}
