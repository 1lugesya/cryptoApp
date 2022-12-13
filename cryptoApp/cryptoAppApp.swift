//
//  cryptoAppApp.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 13.12.2022.
//

import SwiftUI

@main
struct cryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
