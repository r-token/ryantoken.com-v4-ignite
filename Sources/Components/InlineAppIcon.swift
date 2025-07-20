//
//  InlineAppIcon.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/20/25.
//

import Ignite

struct InlineAppIcon: InlineElement {
    let path: String
    let description: String

    var body: some InlineElement {
        Image(path, description: description)
            .resizable()
            .frame(width: 20, height: 20)
            .cornerRadius(5)
            .style(.display, "inline-block")
            .style(.verticalAlign, "middle")
    }
}
