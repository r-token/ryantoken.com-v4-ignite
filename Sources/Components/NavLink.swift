//
//  NavLink.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct NavLink: HTML {
    let text: String
    let target: any StaticPage

    init(_ text: String, target: any StaticPage) {
        self.text = text
        self.target = target
    }

    public var body: some HTML {
        Link(text, target: target)
            .role(.none) // removes underline
            .foregroundStyle(.secondary)
    }
}
