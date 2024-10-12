//
//  ReverseButton.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct ReverseButton: View {
    var body: some View {
        Button {
            print("Reverse Stations")
        } label: {
            Image(systemName: "arrow.up.arrow.down")
                .font(.title)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ReverseButton()
}
