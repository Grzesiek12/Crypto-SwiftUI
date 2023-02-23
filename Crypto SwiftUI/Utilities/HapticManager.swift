//
//  HapticManager.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 23/02/2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
