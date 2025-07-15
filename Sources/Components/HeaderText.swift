//
//  HeaderText.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

public struct HeaderText: HTML {
    var text: String

    public var body: some HTML {
        Text(text)
            .font(.title1)
            .fontWeight(.bold)
            .foregroundStyle(.primary)
    }
}
