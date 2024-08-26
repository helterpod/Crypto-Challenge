//
//  GeckoDataSource.swift
//  Crypto Challenge
//
//  Created by Adrian Richard Talbot on 26/08/2024.
//

import Foundation

struct GeckoDataSource {
    func getCoins() async -> [Coin] {
        let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
        let url = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd"
        
        guard apiKey != nil else {
            return [Coin]()
        }
        
        if let url = URL(string: url) {
            var request = URLRequest(url: url)
            request.addValue("x-cg-demo-api-key \(apiKey ?? "none")", forHTTPHeaderField: "Authorization")
            
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                
                if let httpResponse = response as? HTTPURLResponse {
                    if (httpResponse.statusCode == 200) {
                        let decoder = JSONDecoder()
                        
                        do {
                            let decodedReply = try decoder.decode([Coin].self, from: data)
                            
                            return decodedReply
                        } catch {
                            print("Error decoding the JSON: \(error)")
                        }
                    } else {
                        print("HTTP response status code: \(httpResponse.statusCode)")
                    }
                }
            } catch {
                print("An error occured sending request: \(error)")
            }
        }
        
        return [Coin]()
    }
}
