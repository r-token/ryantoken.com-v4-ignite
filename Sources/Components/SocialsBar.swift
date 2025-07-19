//
//  SocialsBar.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/18/25.
//

import Ignite

struct SocialsBar: HTML {
    let socials: [SocialProfile] = [
        SocialProfile(
            url: Constants.xUrl,
            icon: "twitter-x",
            iconDescription: "The X icon from Bootstrap",
            lightModeColor: "#000000",
            darkModeColor: "#ffffff"
        ),
        SocialProfile(
            url: Constants.blueskyUrl,
            icon: "bluesky",
            iconDescription: "The Bluesky icon from Bootstrap",
            lightModeColor: "#1185FE",
            darkModeColor: "#4A9EFF"
        ),
        SocialProfile(
            url: Constants.mastodonUrl,
            icon: "mastodon",
            iconDescription: "The Mastodon icon from Bootstrap",
            lightModeColor: "#563ACC",
            darkModeColor: "#7B5EE6"
        ),
        SocialProfile(
            url: Constants.githubUrl,
            icon: "github",
            iconDescription: "The GitHub icon from Bootstrap",
            lightModeColor: "#000000",
            darkModeColor: "#ffffff"
        ),
        SocialProfile(
            url: Constants.linkedInUrl,
            icon: "linkedin",
            iconDescription: "The LinkedIn icon from Bootstrap",
            lightModeColor: "#0A66C2",
            darkModeColor: "#4A90E2"
        ),
        SocialProfile(
            url: Constants.mailToUrl,
            icon: "envelope",
            iconDescription: "The envelope icon from Bootstrap",
            lightModeColor: "#6b7280",
            darkModeColor: "#9CA3AF"
        ),
    ]

    var body: some HTML {
        HStack {
            for profile in socials {
                Group {
                    // the bluesky image isn't included in the version of bootstrap bundled with Ignite, so I downloaded it manually
                    if profile.icon == "bluesky" {
                        VStack {
                            Include("bluesky-icon.html")
                        }
                    } else {
                        Link(
                            Image(systemName: profile.icon, description: profile.iconDescription),
                            target: profile.url
                        )
                    }
                }
                .margin(.trailing, 9)
                .style(.color, "light-dark(\(profile.lightModeColor), \(profile.darkModeColor))")
                .font(.title5)
            }
        }
    }
}
