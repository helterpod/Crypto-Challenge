//
//  CoinsModel.swift
//  Crypto Challenge
//
//  Created by Adrian Richard Talbot on 26/08/2024.
//

import Foundation
import SwiftUI

@Observable
class CoinsModel {
    var dataService = GeckoDataSource()
    var coins = [Coin]()
    var selectedCoin: Coin?
    
    func getCoins() {
        Task {
            await coins = dataService.getCoins()
        }
    }
    
}
