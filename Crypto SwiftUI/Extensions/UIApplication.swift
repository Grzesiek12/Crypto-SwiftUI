//
//  UIApplication.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 22/02/2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
