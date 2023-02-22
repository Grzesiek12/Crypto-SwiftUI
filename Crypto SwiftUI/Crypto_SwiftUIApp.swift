//
//  Crypto_SwiftUIApp.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 21/02/2023.
//
// https://www.youtube.com/watch?v=TTYKL6CfbSs&list=PLwvDm4Vfkdphbc3bgy_LpLRQ9DDfFGcFu&index=1

import SwiftUI

@main
struct Crypto_SwiftUIApp: App {
    
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
