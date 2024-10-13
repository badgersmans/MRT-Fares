//
//  CalculateButton.swift
//  MRT Fares
//
//  Created by Shawn Law on 13/10/2024.
//

import SwiftUI

struct CalculateButton: View {
    @Binding var startStation: String?
    @Binding var endStation: String?
    @Binding var totalFare: Double?
    
    @State private var fares: [Fare] = []
    
    
    var body: some View {
        Button {
            if fares.isEmpty {
                fares = loadFares()
            }
            
            if let start = startStation, let end = endStation {
                totalFare = calculateFare(from: start, to: end, fares: fares)
            } else {
                totalFare = nil // Clear the fare if stations are not selected
            }
        } label: {
            Label("Calculate", systemImage: "sum")
                .padding([.horizontal, .vertical], 8)
                .font(.title3)
        }
        .buttonStyle(.borderedProminent)
        .disabled((startStation == nil) || (endStation == nil))
        .padding(.bottom, 30)
    }
}

func calculateFare(from startStation: String, to endStation: String, fares: [Fare]) -> Double? {
    // Find the fare that matches the provided start and end stations
    if let fare = fares.first(where: { $0.start == startStation && $0.destination == endStation }) {
        return fare.price
    }
    return nil // Return nil if no matching fare is found
}

#Preview {
    CalculateButton(startStation: .constant(nil), endStation: .constant(nil), totalFare: .constant(nil as Double?))
}
