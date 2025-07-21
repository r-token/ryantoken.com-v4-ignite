//
//  Blog.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct Blog: StaticPage {
    @Environment(\.articles) var articles

    var title = "Ryan Token - Blog"
    var description = "All of Ryan's blog posts."
    var image: URL? = URL(static: Constants.staticProfileImagePath)

    var body: some HTML {
        HeaderText("Blog", size: .h2)
        SubheaderText("All blog posts. Subscribe to my [RSS feed](/feed.rss).")
            .padding(.bottom)

        ForEach(articles.all.sorted(by: \.date).reversed()) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }
    }
}
