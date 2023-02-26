//
//  SettingsView.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 26/02/2023.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let githubURL = URL(string: "https://github.com/Grzesiek12")!
    
    
    var body: some View {
        NavigationView {
            ZStack {
                //background layaer
                Color.theme.background
                    .ignoresSafeArea()
                //content layer
                List {
                    swiftfulSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGecko
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
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
    
    private var swiftfulSection: some View {
        Section(header: Text("Created")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Made by Grzegorz Wiczkowski")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding()
            Link("YT", destination: youtubeURL)
           
        }
    }
    
    private var coinGecko: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Crypto data comes from here")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding()
          
            Link("Coingecko", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Grzegorz Wiczkowski")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding()
            Link("Grzegorz GitHub", destination: githubURL)
            
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            
            Link("Terms", destination: defaultURL)
            Link("Privacy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
           
        }
    }
}
