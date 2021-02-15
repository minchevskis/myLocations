//
//  Location+CoreDataProperties.swift
//  MyLocations
//
//  Created by Stefan Minchevski on 16.1.21.
//
//

import Foundation
import CoreData
import CoreLocation


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var locationDescription: String
    @NSManaged public var category: String
    @NSManaged public var placemark: CLPlacemark?
    @NSManaged public var date: Date
    @NSManaged public var photoID: NSNumber?

}

extension Location : Identifiable {

}
