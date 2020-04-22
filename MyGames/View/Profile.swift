//
//  Profile.swift
//  MyGames
//
//  Created by William Sutanto on 23/04/20.
//  Copyright © 2020 William Sutanto. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            Image("william")
            Text("William")
                .font(.title)
            Text("williamonlly@gmail.com")
                .fontWeight(.thin)
        }.navigationBarTitle(Text("Profile"))
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
