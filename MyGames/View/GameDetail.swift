//
//  GameDetail.swift
//  MyGames
//
//  Created by William Sutanto on 22/04/20.
//  Copyright © 2020 William Sutanto. All rights reserved.
//

import SwiftUI
import URLImage

struct GameDetail: View {
    var game: Game
    
    var body: some View {
        VStack {
            URLImage(URL(string: "https:" + game.cover.url)!,
                     placeholder: {
                        ProgressView($0) { progress in
                            ZStack {
                                if progress > 0.0 {
                                    CircleProgressView(progress).stroke(lineWidth: 8.0)
                                }
                                else {
                                    CircleActivityView().stroke(lineWidth: 50.0)
                                }
                            }
                        }
                        .frame(width: 50.0, height: 50.0)
            },
                     content: {
                        $0.image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .padding(.all, 40.0)
                            .shadow(radius: 10.0)
            })
            Text(game.name).font(.title).padding()
            Text(game.summary)
                .font(.body)
                .multilineTextAlignment(.leading).padding()
        }
        .navigationBarTitle(Text(game.name), displayMode: .inline)
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(game: gameData[0])
    }
}
