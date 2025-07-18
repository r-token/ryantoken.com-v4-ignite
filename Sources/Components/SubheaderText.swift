//
//  SubheaderText.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/16/25.
//

import Ignite

public struct SubheaderText: HTML {
    let text: String

    init(_ text: String) {
        self.text = text
    }

    public var body: some HTML {
        Text(markdown: "*\(text)*")
            .font(.title4)
            .foregroundStyle(.secondary)
            .fontWeight(.regular)
            .lineSpacing(1.5)
    }
}
