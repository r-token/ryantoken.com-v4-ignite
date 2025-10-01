//
//  Home.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

struct Home: StaticPage {
    @Environment(\.articles) var articles

    var title = "Ryan Token"
    var description = "Ryan Token's personal website. Ryan builds apps for Apple platforms, runs The Golden Hurricast, and writes about Swift, SwiftUI, cloud services, and more."
    var image: URL? = URL(static: Constants.staticProfileImagePath)

    var mostRecent4Articles: [Article] {
        articles.all.sorted(by: \.date).suffix(4).reversed()
    }

    var body: some HTML {
        HeaderText("Hi, I'm Ryan", size: .h2)
            .padding(.bottom, 4)

        Text {
            "I'm a "
            Link("Swift", target: "https://www.swift.org/")
            " developer. By "
            Link("day", target: "https://ryan-token-cv-prod.s3.us-east-2.amazonaws.com/Ryan+Token+CV.pdf")
            ", I build "
            Link("Daysheets", target: Constants.daysheetsWebUrl)
            " - the new standard for tour management. In my free time, I make apps ("

            Link(target: Constants.catchUpAppUrl) {
                InlineAppIcon(path: "/images/catching-up/catchup-icon.png", description: "CatchUp app icon")
            }

            " "

            Link(target: Constants.outrankAppUrl) {
                InlineAppIcon(path: "/images/outrank/outrank-icon.png", description: "Outrank app icon")
            }

            " "

            Link(target: Constants.hotLocalFoodAppUrl) {
                InlineAppIcon(path: "/images/hot-local-food/hlf-icon-square.png", description: "Hot Local Food app icon")
            }

            ") and co-host "
            Link("The Golden Hurricast", target: Constants.hurricastWebUrl)
            "."
        }
        
        Text("When I'm not coding, you'll find me playing basketball, at a concert, skiing, or hiking with my wife and dog.")

        HeaderText("Latest blog posts", size: .h3)
            .padding(.top, 8)

        ForEach(mostRecent4Articles) { article in
            ArticlePreview(for: article)
                .articlePreviewStyle(DynamicArticlePreviewStyle())
        }

        Badge(name: "All Blog Posts", size: .title5, path: "/blog")
            .padding(.top)

        HeaderText("Latest podcast episodes", size: .h3)
            .padding(.top, 64)

        Include("hurricast-embed.html")

        Include("mastodon-verification.html")
    }
}
