//
//  ContentView.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct HomeView: View {
    
    let fares = [
        Fare(name: "Gombak", price: 4.56),
        Fare(name: "Sri Damansara Barat", price: 4.56),
        Fare(name: "Sri Damansara Sentral", price: 4.56)
    ]
    
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
                    PickerButton(title: "End")
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
