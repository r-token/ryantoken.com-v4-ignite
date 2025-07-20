//
//  Footer.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/20/25.
//

import Foundation
import Ignite

struct Footer: HTML {
    let year = Calendar.current.component(.year, from: Date())
    
    var body: some HTML {
        VStack(spacing: 8) {
            Text(markdown: "*© 2025 Ryan Token – [RSS](/feed.rss)*")
                .foregroundStyle(.secondary)
            SocialsBar()
        }
        .padding(.top, 50)
    }
}
