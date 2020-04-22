//
//  GameList.swift
//  MyGames
//
//  Created by William Sutanto on 22/04/20.
//  Copyright © 2020 William Sutanto. All rights reserved.
//

import SwiftUI

struct GameList: View {
    var body: some View {
        NavigationView {
            List(gameData) { game in
                NavigationLink(destination: GameDetail(game: game)) {
                    GameRow(game: game)
                }
            }
            .navigationBarTitle(Text("Games"))
            .navigationBarItems(trailing:
                HStack {
                    NavigationLink(destination: Profile()) {
                        Text("Profile")
                    }
                }
            )
        }
    }
}

struct GameList_Previews: PreviewProvider {
    static var previews: some View {
        GameList()
    }
}
