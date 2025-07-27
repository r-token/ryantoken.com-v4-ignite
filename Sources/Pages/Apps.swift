//
//  Apps.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct Apps: StaticPage {
    var title = "Ryan Token - Apps"
    var description = "The apps Ryan makes for Apple platforms, including Daysheets, CatchUp, Outrank, Hot Local Food, and Chat by Storyboard. All of them are written in Swift and SwiftUI."
    var image: URL? = URL(static: Constants.staticCatchUpImagePath)

    var body: some HTML {
        HeaderText("Apps", size: .h2)
        SubheaderText("The apps I make. You can support my work on [Patreon](https://patreon.com/thegoldenhurricast) or [Buy Me a Coffee](https://www.buymeacoffee.com/ryantoken).")

        Grid(alignment: .leading) {
            ImageWithLink(
                imagePath: "/images/daysheets/daysheets-logo.png",
                imageDescription: "Daysheets' app icon",
                imageType: .appIcon,
                url: Constants.daysheetsWebUrl
            )
            ImageWithLink(
                imagePath: "/images/catching-up/catchup-icon.png",
                imageDescription: "CatchUp's app icon",
                imageType: .appIcon,
                url: Constants.catchUpAppUrl
            )
            ImageWithLink(
                imagePath: "/images/outrank/outrank-icon.png",
                imageDescription: "Outrank's app icon",
                imageType: .appIcon,
                url: Constants.outrankAppUrl
            )
            ImageWithLink(
                imagePath: "/images/hot-local-food/hlf-icon-square.png",
                imageDescription: "Hot Local Food's app icon",
                imageType: .appIcon,
                url: Constants.hotLocalFoodAppUrl
            )
            ImageWithLink(
                imagePath: "/images/storyboard/chat-app-icon.png",
                imageDescription: "Chat by Storyboard's app icon",
                imageType: .appIcon,
                url: Constants.storyboardAppUrl
            )
        }
        .margin(.vertical, -16)

        DividerWithMargin()

        HStack {
            HeaderText("Daysheets", size: .h3)
            SubheaderText("(2025 - Present)")
        }

        ImageWithLink(
            imagePath: "/images/daysheets/daysheets-logo.png",
            imageDescription: "The app icon for Daysheets",
            imageType: .appIcon,
            url: Constants.daysheetsWebUrl
        )
        .frame(maxWidth: Constants.appIconMaxWidth)

        Text(markdown: "[Daysheets](\(Constants.daysheetsWebUrl)) works across Apple platforms to help tour managers and coordinators plan, operate, and collaborate on medium and large-scale music tours.")

        ImageWithLink(
            imagePath: "/images/daysheets/daysheets.webp",
            imageDescription: "Daysheets marketing image that shows the iOS and macOS apps.",
            url: Constants.daysheetsWebUrl
        )

        Text(markdown: "The iOS and macOS apps were developed for Daysheets, Inc. using Swift, SwiftUI, Core Data, and a Swift Package that encompasses shared functionality between platforms.")

        DividerWithMargin()

        HStack {
            HeaderText("CatchUp", size: .h3)
            SubheaderText("(2018 - Present)")
        }

        ImageWithLink(
            imagePath: "/images/catching-up/catchup-icon.png",
            imageDescription: "The app icon for CatchUp - Keep in Touch",
            imageType: .appIcon,
            url: Constants.catchUpAppUrl
        )
        .frame(maxWidth: Constants.appIconMaxWidth)

        Text(markdown: "**Featured on Brett Terpstra's [Systematic](https://systematicpod.com/ep/218) Podcast as one of his 'Top 3' picks (around 46:21)*")
            .foregroundStyle(.secondary)

        Text(markdown: "My first public-facing iOS app! CatchUp helps you stay in touch with the people who matter most. You can set reminders for the contacts you choose, and get notified when it's time to CatchUp with them again.")

        Text(markdown: "CatchUp is free with no ads, but has an in-app tip jar if you want to buy me a coffee ☕")

        Grid(alignment: .leading) {
            ImageWithLink(
                imagePath: "/images/catchup-v3/next-catchups.jpeg",
                imageDescription: "A screenshot of CatchUp's home screen",
                url: Constants.catchUpAppUrl
            )
            .frame(maxWidth: Constants.defaultImageMaxWidth)
            ImageWithLink(
                imagePath: "/images/catchup-v3/detail-screen.jpeg",
                imageDescription: "A screenshot of CatchUp's detail screen",
                url: Constants.catchUpAppUrl
            )
            .frame(maxWidth: Constants.defaultImageMaxWidth)
        }

        Text(markdown: "Read my blog post about modernizing CatchUp with SwiftUI [here](/blog/catching-up) or my latest post about releasing version 3.0 with SwiftData and several new features [here](/blog/catchup-v3).")

        Include("download-catchup.html")

        DividerWithMargin()

        HStack {
            HeaderText("Outrank", size: .h3)
            SubheaderText("(2021 - Present)")
        }

        ImageWithLink(
            imagePath: "/images/outrank/outrank-icon.png",
            imageDescription: "The app icon for Outrank",
            imageType: .appIcon,
            url: Constants.outrankAppUrl
        )
        .frame(maxWidth: Constants.appIconMaxWidth)

        Text(markdown: "Outrank is an app to help you check how your favorite FBS college football teams stack up against the rest.")

        Text(markdown: "Available on iOS, iPadOS, and macOS (on Apple Silicon Macs), it tracks forty-seven different stats for all 131 Division One FBS teams and lets you dissect and compare them however you'd like. You can even compare two teams side-by-side to preview an intriguing matchup.")

        Grid {
            ImageWithLink(
                imagePath: "/images/outrank/outrank-rankings.png",
                imageDescription: "Outrank's rankings screen",
                url: Constants.outrankAppUrl
            )
            ImageWithLink(
                imagePath: "/images/outrank/outrank-detail.png",
                imageDescription: "Outrank's detail screen",
                url: Constants.outrankAppUrl
            )
            ImageWithLink(
                imagePath: "/images/outrank/outrank-compare.png",
                imageDescription: "Outrank's compare screen",
                url: Constants.outrankAppUrl
            )
            ImageWithLink(
                imagePath: "/images/outrank/outrank-settings.png",
                imageDescription: "Outrank's settings screen",
                url: Constants.outrankAppUrl
            )
        }
        .margin(.bottom)

        Text(markdown: "You can follow Outrank on [Twitter](https://x.com/outrankapp), and you can read my blog post about building Outrank [here](/blog/introducing-outrank).")

        Include("download-outrank.html")

        DividerWithMargin()

        HStack {
            HeaderText("Hot Local Food", size: .h3)
            SubheaderText("(2023 - Present)")
        }

        ImageWithLink(
            imagePath: "/images/hot-local-food/hlf-icon-square.png",
            imageDescription: "The app icon for Hot Local Food",
            imageType: .appIcon,
            url: Constants.hotLocalFoodAppUrl
        )
        .frame(maxWidth: Constants.appIconMaxWidth)

        Text(markdown: "Think Tinder, but for food, and it already likes you back. Say hello to **Hot Local Food**. Free, hot, and available on iOS 15 and newer.")

        Text(markdown: "Want something to eat or drink but don't know where to go? Want to explore the local scene nearby or far away? Just want to look at some good pictures of good food? Hot Local Food is there for you.")

        Text(markdown: "With a photo-heavy, Tinder-style swipe interface, an extensive library of restaurants powered by [Yelp](https://fusion.yelp.com/), and slick features built on top, Hot Local Food will help you find exactly what you need.")

        ImageWithLink(
            imagePath: "/images/hot-local-food/hlf-primary-light.png",
            imageDescription: "Hot Local Food feature splash image",
            url: Constants.hotLocalFoodAppUrl
        )

        Text("Features:")
        List {
            "When you’re out, see restaurants nearby and swipe until you find your perfect match"
            "Traveling somewhere? Get to know what’s good by swiping in the area you plan to visit"
            "Filter by price, location, and categories"
            "Create custom lists to save places for later"
            "Access quick shortcuts to make reservations, order delivery or pickup, and find directions"
        }

        Text(markdown: "For vegans, carnivores, and everyone in between, Hot Local Food is the best place to find what you love, so you can eat it.")

        Text(markdown: "You can follow Hot Local Food on [X](https://x.com/hotlocalfood), check out its [marketing website](\(Constants.hotLocalFoodMarketingUrl)), or read my [blog post](/blog/hot-local-food) about building it.")

        Include("download-hot-local-food.html")

        DividerWithMargin()

        HStack {
            HeaderText("Chat by Storyboard", size: .h3)
            SubheaderText("(2023 - 2025)")
        }

        ImageWithLink(
            imagePath: "/images/storyboard/chat-app-icon.png",
            imageDescription: "The app icon for Chat by Storyboard",
            imageType: .appIcon,
            url: Constants.storyboardAppUrl
        )
        .frame(maxWidth: Constants.appIconMaxWidth)

        Text(markdown: "[Chat by Storyboard](\(Constants.storyboardAppUrl)) is an AI-powered, hands-free voice messaging app for truckers. It’s a game-changer for the trucking industry, and I’m proud to have been a core part of its development.")

        Text(markdown: "I built the native iOS and iPadOS apps myself with Swift, SwiftUI, Swift Concurrency, Core Audio, App Intents, SQLite, and more.")

        Include("download-chat-by-storyboard.html")
    }
}
