//
//  NavBar.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

struct NavBar: HTML {
    var body: some HTML {
        VStack(alignment: .center) {
            HeaderLink(text: "Hi, I'm Ryan", path: "/")

            SocialsBar()
                .padding(.bottom, 8)

            HStack {
                NavLink("Apps", target: Apps())
                NavLink("Projects", target: Projects())
                NavLink("Blog", target: Blog())
                NavLink("About", target: About())
                NavLink("Meta", target: Meta())
                NavLink("RSS", target: RSS())
            }
        }
        .padding(.bottom, 24)
    }
}
