//
//  GameRow.swift
//  MyGames
//
//  Created by William Sutanto on 22/04/20.
//  Copyright © 2020 William Sutanto. All rights reserved.
//

import SwiftUI
import URLImage

struct GameRow: View {
    var game: Game
    
    var body: some View {
        HStack {
            URLImage(URL(string: "https:" + game.cover.url)!, content: {
                $0.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            })
                .frame(width: 50, height: 50)
            Text(game.name)
            Spacer()
        }    }
}

struct GameRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GameRow(game: gameData[0])
            GameRow(game: gameData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))    }
}
