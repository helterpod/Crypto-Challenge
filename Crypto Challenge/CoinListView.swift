//
//  ContentView.swift
//  Crypto Challenge
//
//  Created by Adrian Richard Talbot on 24/08/2024.
//

import SwiftUI

struct CoinListView: View {
    @Environment(CoinsModel.self) var model
    
    var body: some View {
        @Bindable var model = model
        
        VStack {
            List(model.coins) { coin in
                
                Text(coin.name ?? "None")
                    .listRowSeparator(.hidden)
                
                    .onTapGesture {
                        model.selectedCoin = coin
                    }
            }
            .listStyle(.plain)
            .navigationTitle("Crypto currencies")
            .sheet(item: $model.selectedCoin) { _ in
                CoinDetailView()
            }
            Spacer()
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            model.getCoins()
        }
    }
}

#Preview {
    CoinListView()
        .environment(CoinsModel())
}
