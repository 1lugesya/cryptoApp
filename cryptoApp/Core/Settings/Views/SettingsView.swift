//
//  SettingsView.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 18.01.2023.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let linkedinURL = URL(string: "https://www.linkedin.com/in/aysegulsari/")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://www.github.com/1lugesya")!
    
    var body: some View {
        NavigationView {
            List {
                cryptoAppSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var cryptoAppSection: some View {
        
            Section(header: Text("Crypto App")) {
                VStack (alignment: .leading) {
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("This ap was made by following a @SwiftfulThinking course on Youtube. It uses MVVM Architecture, Combine and CoreData!")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                    
                }
                .padding(.vertical)
                Link("Subcribe on Youtube 🔎", destination: youtubeURL)
                Link("xxxx", destination: linkedinURL)
             
            }
        }
    
    private var coinGeckoSection: some View {
        
            Section(header: Text("CoinGecko")) {
                VStack (alignment: .leading) {
                    Image("coingecko")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                    
                }
                .padding(.vertical)
                Link("Visit CoinGecko 🔎", destination: coingeckoURL)
            }
        }
    
    private var developerSection: some View {
        
            Section(header: Text("Developer")) {
                VStack (alignment: .leading) {
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("This app was developed by Aysegul. It uses SwiftUI and is written %100 in Swift. The project benefits from multi-threading, publishers/subscribers and data persistance.")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                    
                }
                .padding(.vertical)
                Link("Visit linkedin💛", destination: linkedinURL)
            }
        }
    
    private var applicationSection: some View {
        
            Section(header: Text("Application")) {
                Link("Terms of Service", destination: defaultURL)
                Link("Privacy Policy", destination: defaultURL)
                Link("Company Website", destination: defaultURL)
                Link("Learn More", destination: defaultURL)

            }
        }
    }

