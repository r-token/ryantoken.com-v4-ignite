//
//  Blog.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct Blog: StaticPage {
    @Environment(\.articles) var articles

    var title = "Blog"

    var body: some HTML {
        HeaderText("Blog")

        List {
            ForEach(articles.all.sorted(by: \.date).reversed()) { article in
                Link(article)
            }
        }
    }
}
