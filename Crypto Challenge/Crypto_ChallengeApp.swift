//
//  Crypto_ChallengeApp.swift
//  Crypto Challenge
//
//  Created by Adrian Richard Talbot on 24/08/2024.
//

import SwiftUI

@main
struct Crypto_ChallengeApp: App {
    @State var cModel = CoinsModel()
    
    var body: some Scene {
        WindowGroup {
            CoinListView()
                .environment(cModel)
        }
    }
}
