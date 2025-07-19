//
//  Blog.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct Blog: StaticPage {
    @Environment(\.articles) var articles

    let title = "Blog"

    var body: some HTML {
        HeaderText("Blog", size: .h2)
        SubheaderText("All blog posts. Subscribe to my RSS feed.")

        List {
            ForEach(articles.all.sorted(by: \.date).reversed()) { article in
                Link(article)
            }
        }
    }
}
