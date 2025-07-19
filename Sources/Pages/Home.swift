//
//  Home.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

struct Home: StaticPage {
    @Environment(\.articles) var articles

    let title = "Home"

    var body: some HTML {
        Text(markdown: """
            I'm a [software engineer](\(Constants.githubUrl)), [podcaster](\(Constants.hurricastWebUrl)), [writer](/blog), [college sports fan](\(Constants.hurricastWebUrl)), and general techie.
            """
        )

        Text(markdown: """
            I'm [currently](https://ryan-token-cv-prod.s3.us-east-2.amazonaws.com/Ryan+Token+CV.pdf) a senior software engineer at [Daysheets](https://www.daysheets.com/), where I build across Apple platforms with [Swift](https://www.swift.org/) and [SwiftUI](https://developer.apple.com/swiftui/).
            """
        )

        Text(markdown: """
            In my free time, I do more of that ([CatchUp](https://apps.apple.com/us/app/catchup-keep-in-touch/id1358023550), [Outrank](https://apps.apple.com/us/app/outrank/id1588983785), [Hot Local Food](https://apps.apple.com/us/app/hot-local-food/id1621818779)), write plenty of [serverless](https://aws.amazon.com/serverless/) backend code, co-host [The Golden Hurricast](https://thegoldenhurricast.com/), play a lot of basketball, and hike with my wife and dog.
            """
        )

        HeaderText("Latest blog posts", size: .h2)
            .padding(.top)

        ForEach(articles.all.sorted(by: \.date).suffix(4).reversed()) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }

        Badge(name: "All Blog Posts", size: .title4, path: "/blog")
            .padding(.top)
    }
}
