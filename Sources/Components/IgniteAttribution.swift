//
//  IgniteAttribution.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct IgniteAttribution: HTML {
    public var body: some HTML {
        HStack {
            Spacer()

            Text {
                "Created in Swift with "
                Link(
                    Image("/images/ignite.png", description: "The Ignite logo.")
                        .resizable()
                        .frame(maxWidth: 50)
                        .padding(.bottom, 4),
                    target: "https://github.com/twostraws/Ignite"
                )
                .target(.blank)
            }

            Spacer()
        }
    }
}
