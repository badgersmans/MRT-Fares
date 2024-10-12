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
            PickerButton(title: "Destination")
        }
//        .padding()
    }
}

#Preview {
    HomeView()
}
