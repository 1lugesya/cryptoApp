//
//  Color.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 15.12.2022.
//

import Foundation
import SwiftUI


extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTheme()

}


struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("Background")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    
}


struct LaunchTheme {
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
    
}
