//
//  PickerButton.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import SwiftUI

struct PickerButton: View {
    
    var title: String
//    var textColor: Color

    var body: some View {
        Button {
            print("button press")
        } label: {
            Text(title)
                .frame(width: 260, height: 50)
//                .foregroundColor(textColor)
                .font(.title2)
//                .fontWeight(.semibold)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 1)
                )
                .padding(.vertical, 10)
        }
        
    }
}

#Preview {
    PickerButton(title: "Start")
}
