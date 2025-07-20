//
//  NavBar.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

struct NavBar: HTML {
    var body: some HTML {
        NavigationBar {
            Link("Apps", target: Apps())
            Link("Projects", target: Projects())
            Link("Blog", target: Blog())
            Link("About", target: About())
            Link("Meta", target: Meta())
            Link("RSS", target: "/feed.rss")
        } logo: {
            Span("Ryan Token")
                .font(.title3)
                .foregroundStyle(.primary)
        }
        .navigationItemAlignment(.trailing)
        .position(.fixedTop)
        .background(.ultraThinMaterial)
    }
}
