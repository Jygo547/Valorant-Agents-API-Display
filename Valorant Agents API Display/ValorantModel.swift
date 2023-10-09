//
//  ValorantModel.swift
//  Valorant Agents API Display
//
//  Created by ATLAS Checkout 6 Guest on 10/6/23.
//

import Foundation

struct ValorantResponse: Codable {
    var data: [Agents]
    var status: Int

}

struct Agents: Codable, Identifiable {
    
    var uuid: String
    var displayName: String
    var role: Role?
    var description: String
    var abilities: [Abilities]
    
    var id: String {uuid}
    
}

struct Role: Codable {
    var displayName: String
    var description: String

}


struct Abilities: Codable {
    var slot: String
    var displayName: String
    var description: String
}


