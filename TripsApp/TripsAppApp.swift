//
//  TripsAppApp.swift
//  TripsApp
//
//  Created by Mayur Vaity on 09/08/24.
//

import SwiftUI
import SwiftData

@main
struct TripsAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Trip.self, BucketListItem.self])
       
    }
}
