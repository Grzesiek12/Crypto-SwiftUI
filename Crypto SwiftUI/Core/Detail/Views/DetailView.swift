//
//  DetailView.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 24/02/2023.
//

import SwiftUI
import Combine
import Foundation

struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    @StateObject var vm: DetailViewModel
 
    init(coin: CoinModel) {
      
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Init Detail View for \(coin.name)")
    }
    
    var body: some View {
        
        Text("HI")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
