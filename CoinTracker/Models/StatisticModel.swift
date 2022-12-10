//
//  StatisticModel.swift
//  CoinTracker
//
//  Created by Jacob Lucas on 11/29/22.
//

import Foundation

class StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let precentChange: Double?
    
    init(title: String, value: String, precentChange: Double? = nil) {
        self.title = title
        self.value = value
        self.precentChange = precentChange
    }
}
