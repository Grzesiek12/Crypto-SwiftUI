//
//  String.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 24/02/2023.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
