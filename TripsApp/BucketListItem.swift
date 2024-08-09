//
//  BucketListItem.swift
//  TripsApp
//
//  Created by Mayur Vaity on 09/08/24.
//

import Foundation
import SwiftData

@Model
class BucketListItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
