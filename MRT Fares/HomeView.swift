//
//  ContentView.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var startStation: String?
    @State private var endStation: String?
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: StartStations(selectedStation: $startStation)) {
                    PickerButton(title: startStation ?? "Start")
                }

                HStack {
                    Spacer()
                    ReverseButton(startStation: $startStation, endStation: $endStation)
                }
                .padding(.trailing, 20)
                
                NavigationLink(destination: EndStations(selectedStation: $endStation)) {
                    PickerButton(title: endStation ?? "Destination")
                }
            }
//            .navigationTitle("MRT Fare Calculator")
//            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}


#Preview {
    HomeView()
}
