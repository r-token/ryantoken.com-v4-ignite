//
//  Tags.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/19/25.
//

import Ignite

struct Tags: TagPage {
    var sortedArticlesForTag: [Article] {
        tag.articles.sorted(by: \.date).reversed()
    }

    var body: some HTML {
        Text {
            "Blog posts tagged "
            Badge(name: TagFormatter.format(tag.name), size: .title4, path: "#")
        }
        .font(.title2)
        .fontWeight(.semibold)
        .padding(.bottom)
        .lineSpacing(1)

        ForEach(sortedArticlesForTag) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }
    }
}
