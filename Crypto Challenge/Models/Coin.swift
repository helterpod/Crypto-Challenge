//
//  Coin.swift
//  Crypto Challenge
//
//  Created by Adrian Richard Talbot on 26/08/2024.
//

import Foundation

struct Coin : Identifiable, Decodable {
    var id: String?
    var symbol: String?
    var name: String?
    var currentPrice: Double?
    var high24h: Double?
    var low24h: Double?
    var delta24h: Double?
    
    enum CodingKeys: String, CodingKey {
        case currentPrice = "current_price"
        case high24h = "high_24h"
        case low24h = "low_24h"
        case delta24h = "price_change_24h"
        
        case id
        case symbol
        case name
    }
}
