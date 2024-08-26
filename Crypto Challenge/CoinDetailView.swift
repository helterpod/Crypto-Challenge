//
//  CoinDetailView.swift
//  Crypto Challenge
//
//  Created by Adrian Richard Talbot on 26/08/2024.
//

import SwiftUI

struct CoinDetailView: View {
    @Environment(CoinsModel.self) var model
    var body: some View {
        let coin = model.selectedCoin
        
        VStack(alignment: .leading) {
            Text("Name: \t\(coin?.name ?? "Nil")")
            Text("Current price: \t" + String(format: "%.2f", (coin?.currentPrice ?? 0.0) ))
            Text("High in last 24h: \t" + String(format: "%.2f", (coin?.high24h ?? 0.0) ))
            Text("Low in last 24h \t" + String(format: "%.2f", (coin?.low24h ?? 0.0) ))
            Text("Change in last 24h: \t" + String(format: "%.2f", (coin?.delta24h ?? 0.0) ))
        }
        .font(.title2)
        .padding()
        Spacer()
    }
}

#Preview {
    CoinDetailView()
        .environment(CoinsModel())
}
