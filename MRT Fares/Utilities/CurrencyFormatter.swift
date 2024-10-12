//
//  CurrencyFormatter.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import Foundation


func formatCurrency(amount: Double, currencyCode: String = "MYR") -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencyCode = currencyCode
    formatter.locale = Locale.current // You can also specify a locale if needed, e.g., Locale(identifier: "en_US")
    
    return formatter.string(from: NSNumber(value: amount)) ?? "Formatting Error"
}
