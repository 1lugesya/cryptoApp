//
//  UIApplication.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 2.01.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }
    
}
