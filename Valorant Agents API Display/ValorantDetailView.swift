//
//  ValorantDetailView.swift
//  Valorant Agents API Display
//
//  Created by ATLAS Checkout 6 Guest on 10/6/23.
//

import SwiftUI

struct ValorantDetailView: View {
    @ObservedObject var viewModel: ValorantDetailViewModel

    init(agent: Agents) {
        viewModel = ValorantDetailViewModel(agent: agent)
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text("Name: \(viewModel.agent.displayName)")
                .font(.title)
                .padding(.vertical, 10)
            Text("Role: \(viewModel.agent.role)")
                .font(.headline)
                .padding(.vertical, 5)
            Text("Description: \(viewModel.agent.description)")
                .font(.headline)
                .padding(.vertical, 5)
            Text("Abilities: \(viewModel.agent.abilities.slot)")
                .font(.headline)
                .padding(.vertical, 5)
            Text("Conference: \(viewModel.agent.abilities.displayName)")
                .padding(.vertical, 5)
            Text("Description: \(viewModel.agent.abilities.description)")
                .padding(.vertical, 5)
        }
        .navigationBarTitle("Agent Details")
    }
}

struct ValorantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let agent = Agents(
            
            uuid: "e370fa57-4757-3604-3648-499e1f642d3f",
            displayName: "Gekko",

            role: "Initiator",
            description: "Gekko the Angeleno leads a tight-knit crew of calamitous creatures. His buddies bound forward, scattering enemies out of the way, with Gekko chasing them down to regroup and go again.",

            abilities: Abilities(
                slot: "Ability1",
                displayName: "Wingman",
                description: "EQUIP Wingman. FIRE to send Wingman forward seeking enemies. Wingman unleashes a concussive blast toward the first enemy he sees. ALT FIRE when targeting a Spike site or planted Spike to have Wingman defuse or plant the Spike. To plant, Gekko must have the Spike in his inventory. When Wingman expires he reverts into a dormant globule. INTERACT to reclaim the globule and gain another Wingman charge after a short cooldown."
            )
        )
        return ValorantDetailView(agent: agent)
    }
}
