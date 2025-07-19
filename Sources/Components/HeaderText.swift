//
//  HeaderText.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/15/25.
//

import Ignite

struct HeaderText: HTML {
    enum Size {
        case h1, h2, h3, h4, h5, h6
    }

    let text: String
    let size: Size

    init(_ text: String, size: Size = .h1) {
        self.text = text
        self.size = size
    }

    var titleSize: Font.Style {
        switch size {
        case .h1:
            .title1
        case .h2:
            .title2
        case .h3:
            .title3
        case .h4:
            .title4
        case .h5:
            .title5
        case .h6:
            .title6
        }
    }

    var style: ForegroundStyle {
        switch size {
        case .h1:
                .primary
        case .h2:
                .body
        case .h3:
                .body
        case .h4:
                .secondary
        case .h5:
                .body
        case .h6:
                .body
        }
    }

    var body: some HTML {
        Text(markdown: text)
            .font(titleSize)
            .fontWeight(.semibold)
            .foregroundStyle(style)
    }
}
