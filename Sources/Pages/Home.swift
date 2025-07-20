//
//  Home.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

struct Home: StaticPage {
    @Environment(\.articles) var articles

    var title = "Home"
    var description = "Ryan is a Swift developer who loves building for Apple platforms and beyond. By day, he's a senior software engineer at Daysheets. By night, he makes apps (CatchUp, Outrank, Hot Local Food) and co-hosts The Golden Hurricast. When he's not coding, you'll find him playing basketball, skiing, or hiking with his wife and dog."

    var body: some HTML {
        HeaderText("Hi, I'm Ryan", size: .h2)
            .padding(.bottom, 4)

        Text {
            "I'm a "
            Link("Swift", target: "https://www.swift.org/")
            " developer who loves building for Apple platforms and beyond. By "
            Link("day", target: "https://ryan-token-cv-prod.s3.us-east-2.amazonaws.com/Ryan+Token+CV.pdf")
            ", I'm a senior software engineer at "
            Link("Daysheets", target: Constants.daysheetsWebUrl)
            ". By night, I make apps ("

            Link(target: Constants.catchUpAppUrl) {
                InlineAppIcon(path: "/images/catching-up/catchup-icon.png", description: "CatchUp app icon")
            }

            ", "

            Link(target: Constants.outrankAppUrl) {
                InlineAppIcon(path: "/images/outrank/outrank-icon.png", description: "Outrank app icon")
            }

            ", "

            Link(target: Constants.hotLocalFoodAppUrl) {
                InlineAppIcon(path: "/images/hot-local-food/hlf-icon-square.png", description: "Hot Local Food app icon")
            }

            ") and co-host "
            Link("The Golden Hurricast", target: Constants.hurricastWebUrl)
            "."
        }
        
        Text(markdown: """
            When I'm not coding, you'll find me playing basketball, skiing, or hiking with my wife and dog.
            """
        )

        HeaderText("Latest blog posts", size: .h3)
            .padding(.top, 8)

        ForEach(articles.all.sorted(by: \.date).suffix(4).reversed()) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }

        Badge(name: "All Blog Posts", size: .title5, path: "/blog")
            .padding(.top)

        HeaderText("Latest podcast episodes", size: .h3)
            .padding(.top, 64)

        Include("hurricast-embed.html")
    }
}
