//
//  ValorantDetailViewModel.swift
//  Valorant Agents API Display
//
//  Created by ATLAS Checkout 6 Guest on 10/6/23.
//

import Foundation

class ValorantDetailViewModel: ObservableObject {
    var agent: Agents

    init(agent: Agents) {
        self.agent = agent
    }
}
