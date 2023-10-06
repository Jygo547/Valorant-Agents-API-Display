//
//  ValorantView.swift
//  Valorant Agents API Display
//
//  Created by ATLAS Checkout 6 Guest on 10/6/23.
//

import SwiftUI

struct ValorantView: View {
    @ObservedObject var viewModel = ValorantListViewModel()
    @State private var searchText = ""
    @State private var searchIsActive = false
    var body: some View {
        NavigationView {
            List(filteredAgents) { agent in
                NavigationLink(destination: ValorantDetailView(agent: agent)) {
                    Text("\(agent.displayName)")
                }
            }
            .onAppear {
                viewModel.fetchAgents()
            }
            .navigationBarTitle("Valorant Agents")
            .searchable(text: $searchText)
        }
    }
    var filteredAgents: [Agents] {
        if searchText.isEmpty {
            return viewModel.agents
        } else {
            return viewModel.agents.filter { agent in
                let name = "\(agent.displayName)"
                return name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}
struct ValorantView_Previews: PreviewProvider {
    static var previews: some View {
        ValorantView()
    }
}
