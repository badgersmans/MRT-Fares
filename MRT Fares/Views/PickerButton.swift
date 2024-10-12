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
        Text(title)
            .frame(width: .widthPercent(percent: 0.8), height: 50)
        //                .foregroundColor(textColor)
            .font(.title2)
        //                .fontWeight(.semibold)
        
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.lightGray), lineWidth: 1)
            )
            .padding(.vertical, 10)
    }
}



#Preview {
    PickerButton(title: "Start")
}
