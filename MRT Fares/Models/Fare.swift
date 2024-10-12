//
//  Fare.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import Foundation

struct Fare: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: Double
}
