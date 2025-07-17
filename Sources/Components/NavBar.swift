//
//  NavBar.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

public struct NavBar: HTML {
    public var body: some HTML {
        VStack {
            HeaderLink(text: "Hi, I'm Ryan", path: "/")
                .horizontalAlignment(.center)

            HStack {
                NavLink("Apps", target: Apps())
                NavLink("Projects", target: Projects())
                NavLink("Blog", target: Blog())
                NavLink("About", target: About())
                NavLink("Meta", target: Meta())
            }
            .horizontalAlignment(.center)

            .padding(.bottom, 48)
            // .background(.secondaryBackground)
        }
        .lineSpacing(0)
    }
}
