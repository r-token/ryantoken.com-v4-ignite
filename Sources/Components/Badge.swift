//
//  Badge.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/19/25.
//

import Ignite

struct Badge: InlineElement {
    let name: String
    let size: Font.Style
    let path: String

    var body: some InlineElement {
        Link(
            Span(name)
                .font(size)
                .fontWeight(.medium)
                .foregroundStyle(.primary)
                .background(.lightBlue.opacity(0.3))
                .padding(.horizontal, .em(0.75))
                .padding(.vertical, .em(0.4))
                .cornerRadius(6)
                .margin(.bottom, .em(0.25)),
            target: path
        )
        .role(.none)
    }
}
