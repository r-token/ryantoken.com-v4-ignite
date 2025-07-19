//
//  HeaderLink.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct HeaderLink: HTML {
    var text: String
    var path: String

    var body: some HTML {
        Text {
            Link(text, target: path)
                .role(.none) // removes underline
        }
        .font(.title1)
        .fontWeight(.bold)
        .foregroundStyle(.primary)
    }
}
