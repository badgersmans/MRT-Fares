//
//  ReverseButton.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct ReverseButton: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var startStation: String?
    @Binding var endStation: String?
    
    var body: some View {
        Button {
            print("Reverse Stations")
            let temp = startStation
            startStation = endStation
            endStation = temp
        } label: {
            Image(systemName: "arrow.up.arrow.down")
                .font(.title)
                .symbolRenderingMode(.palette)
                .foregroundStyle(colorScheme == .dark ? .blue : .black)
        }
        .disabled((startStation?.isEmpty ?? true) || (endStation?.isEmpty ?? true))
    }
}

#Preview {
    ReverseButton(startStation: .constant(nil), endStation: .constant(nil))
}
