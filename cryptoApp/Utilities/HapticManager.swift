//
//  HapticManager.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 11.01.2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
        
    }
}
