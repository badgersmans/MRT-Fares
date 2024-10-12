//
//  EndStations.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct EndStations: View {
    @State private var search: String = ""
    @State private var filteredFares: [Fare] = []
    @Binding var selectedStation: String?
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        List(filteredFares) { fare in
            Button {
                selectedStation = fare.name
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text(fare.name)
                    .font(.title3)
                    .padding()
            }
        }
        .searchable(text: $search)
        .onChange(of: search) {
            if search.isEmpty {
                filteredFares = dummyFares
            } else {
                filteredFares = dummyFares.filter { $0.name.localizedCaseInsensitiveContains(search) }
            }
        }
        .navigationTitle("Destination")
        .onAppear {
            filteredFares = dummyFares
        }
    }
}

#Preview {
    NavigationStack {
        EndStations(selectedStation: .constant(nil))
    }
}
