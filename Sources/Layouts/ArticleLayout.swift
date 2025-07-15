//
//  ArticleLayout.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Foundation
import Ignite

struct ArticleLayout: ArticlePage {
    var body: some HTML {
        Text(article.title)
            .font(.title1)

        if let image = article.image {
            Image(image, description: article.imageDescription)
                .resizable()
                .cornerRadius(20)
                .frame(maxHeight: 300)
        }

        if let tags = article.tags {
            Section {
                Text("Tagged with: \(tags.joined(separator: ", "))")

                Text("\(article.estimatedWordCount) words; \(article.estimatedReadingMinutes) minutes to read.")
            }
        }

        Text(article.text)
    }
}
