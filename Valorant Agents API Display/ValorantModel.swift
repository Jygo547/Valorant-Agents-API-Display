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
    //var displayIcon:
    var role: String
    var description: String
    var abilities: Abilities
    
    var id: String {uuid}
    
}

struct Abilities: Codable {
    var slot: String
    var displayName: String
    var description: String
    //var displayIcon:
}
