//
//  ContentView.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: StartStations()) {
                    PickerButton(title: "Start")
                }


                HStack {
                    Spacer()
                    ReverseButton()
                }
                .padding(.trailing, 20)
                
                NavigationLink(destination: EndStations()) {
                    PickerButton(title: "Destination")
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
