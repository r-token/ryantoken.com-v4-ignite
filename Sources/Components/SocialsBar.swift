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
            color: .black
        ),
        SocialProfile(
            url: Constants.blueskyUrl,
            icon: "bluesky",
            iconDescription: "The Bluesky icon from Bootstrap",
            color: .init(hex: "#1185FE")
        ),
        SocialProfile(
            url: Constants.mastodonUrl,
            icon: "mastodon",
            iconDescription: "The Mastodon icon from Bootstrap",
            color: .init(hex: "#563ACC")
        ),
        SocialProfile(
            url: Constants.githubUrl,
            icon: "github",
            iconDescription: "The GitHub icon from Bootstrap",
            color: .black
        ),
        SocialProfile(
            url: Constants.linkedInUrl,
            icon: "linkedin",
            iconDescription: "The LinkedIn icon from Bootstrap",
            color: .init(hex: "#0A66C2")
        ),
        SocialProfile(
            url: Constants.mailToUrl,
            icon: "envelope",
            iconDescription: "The envelope icon from Bootstrap",
            color: .gray
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
                .foregroundStyle(profile.color)
                .font(.title5)
            }
        }
    }
}
