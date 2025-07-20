//
//  Meta.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Foundation
import Ignite

struct Meta: StaticPage {
    let title = "Meta"
    let year = Calendar.current.component(.year, from: Date())

    var body: some HTML {
        HeaderText("Meta", size: .h2)
        SubheaderText("How this site was built.")

        ImageWithLink(imagePath: "/images/ignite.png", imageDescription: "The Ignite logo.", url: "https://github.com/twostraws/Ignite")
            .frame(maxWidth: Constants.appIconMaxWidth)

        IgniteAttribution()
            .margin(.bottom, -12)

        Text(markdown: "It's hosted on [Vercel](https://vercel.com).")

        Text(markdown: "My code editors of choice are [Xcode](https://developer.apple.com/xcode/) and [Nova](https://nova.app/).")

        Text(markdown: "The source code and README for this site are on [GitHub](https://github.com/r-token/ryantoken.com-v4-ignite).")

        Text(markdown: "Previous versions of the site were built with [Svelte](https://svelte.dev/), [Tailwind](https://tailwindcss.com), [Publish](https://github.com/johnsundell/publish), [Netlify](https://www.netlify.com), and others.")

        Text(markdown: "*Subscribe to my RSS feed*")
            .foregroundStyle(.secondary)

        Text(markdown: "*© 2025 Ryan Token*")
            .foregroundStyle(.secondary)
    }
}
