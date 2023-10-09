//
//  ValorantViewModel.swift
//  Valorant Agents API Display
//
//  Created by ATLAS Checkout 6 Guest on 10/6/23.
//

import Foundation

class ValorantListViewModel: ObservableObject {
    @Published var agents: [Agents] = []

    func fetchAgents() {
        if let url = URL(string: "https://valorant-api.com/v1/agents") {
            URLSession.shared.dataTask(with: url) { data, _, error in
                if let data = data {
                    do {
                        let decodedData = try JSONDecoder().decode(ValorantResponse.self, from: data)
                        DispatchQueue.main.async {
                            self.agents = decodedData.data
                        }
                        print("My data: \(self)")
                    } catch {
                        print("Error decoding data: \(error)")
                    }
                } else if let error = error {
                    print("Error fetching data: \(error)")
                }
            }.resume()
        }
        
    }
    
}
