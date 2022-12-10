//
//  String.swift
//  CoinTracker
//
//  Created by Jacob Lucas on 12/8/22.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
