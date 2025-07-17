//
//  ArticleLayout.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

struct ArticleLayout: ArticlePage {
    var body: some HTML {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 8) {
                HeaderText(article.title)
                    .font(.title1)
                    .lineSpacing(0)

                if let subtitle = article.subtitle {
                    Text(markdown: "*\(subtitle)*")
                        .foregroundStyle(.secondary)
                }

                Text(markdown: "*Published \(article.date.formatted(date: .abbreviated, time: .omitted))*")
                    .foregroundStyle(.secondary)

                Text(markdown: "*\(article.estimatedWordCount) words; \(article.estimatedReadingMinutes) minutes to read.*")
                    .foregroundStyle(.secondary)

                Divider()
            }
            .padding(.bottom, 36)

            if let image = article.image {
                Image(image, description: article.imageDescription)
                    .resizable()
                    .cornerRadius(20)
                    .frame(maxHeight: 300)
            }

            Text(article.text)
                .padding(.top, 36)
        }
        .frame(maxWidth: 600)
        .margin(.horizontal, .custom("auto"))
    }
}
