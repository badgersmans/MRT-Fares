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
    @State private var totalFare: Double?
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
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
                    .padding(.bottom, 30)
                    
                    CalculateButton(startStation: $startStation,
                                    endStation: $endStation,
                                    totalFare: $totalFare)
                    
                    if let fare = totalFare {
                        FareText(totalFare: fare)
                    }
                    
                }
                .padding(.top, .heightPercent(percent: 0.30))
            }
            //            .navigationTitle("MRT Fare Calculator")
            //            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    HomeView()
}
