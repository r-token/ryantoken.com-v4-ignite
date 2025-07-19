//
//  Projects.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct Projects: StaticPage {
    var title = "Projects"

    var body: some HTML {
        HeaderText("Projects", size: .h2)
        SubheaderText("Other notable projects I've worked on. You can support my work on [Patreon](https://patreon.com/thegoldenhurricast) or [Buy Me a Coffee](https://www.buymeacoffee.com/ryantoken).")

        ImageWithLink(
            imagePath: "/images/bmc-button.png",
            imageDescription: "A button that links to the Buy Me a Coffee website.",
            url: "https://www.buymeacoffee.com/ryantoken"
        )
        .frame(maxWidth: Constants.defaultImageMaxWidth)

        DividerWithMargin()

        HeaderText("Serverless Swift", size: .h3)

        ImageWithLink(
            imagePath: "/images/serverless-swift/serverless-swift.png",
            imageDescription: "The blog cover icon for my Serverless Swift project",
            url: "/blog/serverless-swift"
        )
        .frame(maxWidth: Constants.defaultImageMaxWidth)

        Text(markdown: "I built a serverless back-end system on AWS written entirely in Swift that remotely controls the Philips Hue bulbs in my house whenever my favorite sports teams score or win. It runs on AWS services including Lambda, DynamoDB, SQS, and EventBridge.")

        Text(markdown: "You can read my blog post about it [here](https://www.ryantoken.com/blog/serverless-swift), and you can view the full source code for this project on GitHub: [https://github.com/r-token/sports-home-automation-swift](https://github.com/r-token/sports-home-automation-swift)")

        DividerWithMargin()

        HeaderText("The Golden Hurricast", size: .h3)

        Text(markdown: "[The Golden Hurricast](https://www.thegoldenhurricast.com/) is the leading independent podcast and blog covering Golden Hurricane athletics at The University of Tulsa.")

        ImageWithLink(
            imagePath: "/images/hurricast/hurricast-homepage-2025.png",
            imageDescription: "A screenshot of thegoldenhurricast.com's homepage",
            url: "https://www.thegoldenhurricast.com"
        )

        Text(markdown: "I built and maintain the website, as well as co-host the podcast and contribute to blog posts. All of the content produced by The Golden Hurricast is completely free.")

        DividerWithMargin()

        HeaderText("Archived: Eagle Crest STL", size: .h3)

        Text(markdown: "[Eagle Crest STL](https://eaglecreststl.org/) is a fully serverless web app tailor-made for the Eagle Crest HOA in St. Louis, MO.")

        Text(markdown: "It allows members and trustees to easily send messages, make requests, give announcements, view documents, and see a list of all homeowners in the HOA.")

        Image("/images/eagle-crest/eaglecrest-home.png", description: "A screenshot of eaglecreststl.org's homepage")
            .resizable()
            .margin(.top, 4)
            .margin(.bottom, 16)

        Text(markdown: "I build the web app with React and AWS services including S3, Lambda, API Gateway, DynamoDB, SES, Cognito, Amplify, and more.")

        DividerWithMargin()

        HeaderText("Archived: Dashing Through the 'Ville", size: .h3)

        Text(markdown: "[Dashing Through the 'Ville](https://dashingthroughtheville.com/) is a city-wide scavenger hunt held throughout Bartlesville, Oklahoma.")

        Text(markdown: "Proceeds from the event benefitted Youth and Family Services of Washington County, and it helped them raise a total of $15,000.")

        Text(markdown: "I was the sole developer for this project. As a volunteer, I ended up building the entire application in a span of three weeks.")

        Text(markdown: "We had about three hundred users throughout the city and had no incidents throughout the event.")

        Image("/images/dttv/dttv-website.png", description: "A screenshot of dashingthroughtheville.com's clues and leaderboard page")
            .resizable()
            .margin(.top, 4)
            .margin(.bottom, 16)

        Text(markdown: "The web app is fully serverless - built with React on the front end, AWS as the middle tier and back end, and hosted on Netlify. The AWS services used include Lambda, API Gateway, DynamoDB, SES, Cognito, Amplify, IAM, and more.")
    }
}
