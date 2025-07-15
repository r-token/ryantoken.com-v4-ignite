//
//  Home.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        HeaderText(text: "Hi, I'm Ryan")

        Image("/images/ignite.png", description: "The Ignite logo.")
            .resizable()
            .frame(maxWidth: 100)
    }
}
