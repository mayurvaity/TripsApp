//
//  ContentView.swift
//  TripsApp
//
//  Created by Mayur Vaity on 09/08/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
    @Query var trips: [Trip]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(trips) { trip in
                    VStack(alignment: .leading) {
                        Text(trip.name)
                            .font(.title2)
                            
                        
                        HStack {
                            Text(trip.startDate.formatted(date: .abbreviated, time: .omitted))
                                .font(.callout)
                            
                            Spacer()
                            
                            Image(systemName: "arrow.right")
                                .font(.title3)
                            
                            Spacer()
                            
                            Text(trip.endDate.formatted(date: .abbreviated, time: .omitted))
                                .font(.callout)
                        }
                    }
                }
            }
            .navigationTitle("Trips")
            .toolbar {
                Button("Add samples") {
                    addSamples()
                }
            }
        }
        
    }
    
    func addSamples() {
        let rome = Trip(name: "Rome")
        let nyc = Trip(name: "NYC")
        let paris = Trip(name: "Paris")
        
        modelContext.insert(rome)
        modelContext.insert(nyc)
        modelContext.insert(paris)
    }
    
    
}

#Preview {
    ContentView()
}
