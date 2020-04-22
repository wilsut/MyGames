//
//  Game.swift
//  MyGames
//
//  Created by William Sutanto on 22/04/20.
//  Copyright © 2020 William Sutanto. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Game : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var summary: String
    var cover: Cover
}

struct Cover : Hashable, Codable {
    var id: Int
    var url: String
}
