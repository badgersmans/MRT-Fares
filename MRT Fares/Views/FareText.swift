//
//  FareText.swift
//  MRT Fares
//
//  Created by Shawn Law on 13/10/2024.
//

import SwiftUI

struct FareText: View {
    var totalFare: Double?
    
    var body: some View {
        HStack {
            Text("Total fare:")
                .font(.title2)
            
            if let fare = totalFare {
                Text(formatCurrency(amount: fare))
                    .font(.title2)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    FareText(totalFare: 4.50)
}
