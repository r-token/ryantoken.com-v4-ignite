//
//  Tags.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/19/25.
//

import Ignite

struct Tags: TagPage {
    var body: some HTML {
        Text {
            "Blog posts tagged "
            Badge(name: TagFormatter.format(tag.name), size: .title3, path: "#")
        }
        .font(.title2)
        .padding(.bottom)
        .lineSpacing(1.5)

        ForEach(tag.articles.sorted(by: \.date).reversed()) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }
    }
}
