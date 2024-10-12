//
//  ContentView.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            PickerButton(title: "Start")
            
            HStack {
                Spacer()
                ReverseButton()
            }
            .padding(.trailing, 20)
            
            PickerButton(title: "Destination")
        }
    }
}


#Preview {
    HomeView()
}
