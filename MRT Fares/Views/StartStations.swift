//
//  StartStations.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct StartStations: View {
    @State private var search: String = ""
    @State private var filteredStations: [String] = []
    @Binding var selectedStation: String?
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        List(filteredStations, id: \.self ) { station in
            Button {
                selectedStation = station
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                Text(station)
                    .font(.title3)
                    .padding()
            }
        }
        .searchable(text: $search,
                    placement: .navigationBarDrawer(displayMode: .always)
        )
        .onChange(of: search) {
            if search.isEmpty {
                filteredStations = stationNames
            } else {
                filteredStations = stationNames.filter { $0.localizedCaseInsensitiveContains(search) }
            }
        }
        .navigationTitle("Start")
        .onAppear {
            filteredStations = stationNames
        }
    }
}

#Preview {
    NavigationStack {
        StartStations(selectedStation: .constant(nil))
    }
}
