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
    @State private var showLaunchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        
        
    }
    
    
    var body: some Scene {
        WindowGroup {
            
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(vm)
                
                ZStack {
                    if showLaunchView {
                        
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                        
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
