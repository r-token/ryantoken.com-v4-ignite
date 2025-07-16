//
//  Meta.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct Meta: StaticPage {
    var title = "Meta"

    var body: some HTML {
        SubheaderText(text: "Meta")

        IgniteAttribution()
    }
}
