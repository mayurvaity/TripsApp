//
//  Trip.swift
//  TripsApp
//
//  Created by Mayur Vaity on 09/08/24.
//

import Foundation
import SwiftData

@Model
class Trip {
    var name: String
    var location: String
    var startDate: Date
    var endDate: Date
    var bucketList: [BucketListItem]? = []
    
    init(name: String = "", location: String = "", startDate: Date = .now, endDate: Date = .now) {
        self.name = name
        self.location = location
        self.startDate = startDate
        self.endDate = endDate
    }
}
