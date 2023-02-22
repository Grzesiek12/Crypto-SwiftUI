//
//  HomeViewModel.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 21/02/2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
 
        // updates allCoins
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.4), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink { [weak self](returnCoins) in
                self?.allCoins = returnCoins
            }
            .store(in: &cancellables)
        
    }
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        
        guard !text.isEmpty else {
            return coins
        }
        
        let lowercasedText = text.lowercased()
        
        return coins.filter { (coin) -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
    }
    
}
