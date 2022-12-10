//
//  UIApplication.swift
//  CoinTracker
//
//  Created by Jacob Lucas on 11/28/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to:  nil, from: nil, for: nil)
    }
    
}
