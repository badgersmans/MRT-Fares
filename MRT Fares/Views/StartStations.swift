//
//  StartStations.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct StartStations: View {
    @State private var search: String = ""
    @State private var filteredFares: [Fare] = []
    
    var body: some View {
        List(filteredFares) { fare in
            Text(fare.name)
                .padding()
        }
        .searchable(text: $search)
        .onChange(of: search) {
            if search.isEmpty {
                filteredFares = dummyFares
            } else {
                filteredFares = dummyFares.filter { $0.name.localizedCaseInsensitiveContains(search) }
            }
        }
        .navigationTitle("Start")
        .onAppear {
            filteredFares = dummyFares
        }
    }
}

#Preview {
    NavigationStack {
        StartStations()
    }
}
