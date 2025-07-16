//
//  SubheaderText.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

public struct SubheaderText: HTML {
    let text: String
    let styled: Bool

    init(text: String, styled: Bool? = true) {
        self.text = text
        self.styled = styled ?? true
    }

    public var body: some HTML {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(styled ? .primary : .body)
    }
}
