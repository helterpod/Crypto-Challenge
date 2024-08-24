//
//  ContentView.swift
//  Crypto Challenge
//
//  Created by Adrian Richard Talbot on 24/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State var apiKey: String? = "None"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Your API key is \n \(apiKey ?? "empty")")
        }
        .padding()
        .onAppear {
            apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
        }
    }
}

#Preview {
    ContentView()
}
