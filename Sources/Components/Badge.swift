//
//  Badge.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/19/25.
//

import Ignite

struct Badge: HTML {
    let name: String
    let size: Font.Style
    let path: String

    var body: some HTML {
        Link(
            Span(name)
                .font(size)
                .fontWeight(.medium)
                .foregroundStyle(.primary)
                .background(.blue.opacity(0.1))
                .padding(.horizontal, .em(0.75))
                .padding(.vertical, .em(0.4))
                .cornerRadius(6)
                .margin(.bottom, .em(0.25)), // Add bottom margin for wrapped lines
            target: path
        )
        .role(.none)
    }
}
