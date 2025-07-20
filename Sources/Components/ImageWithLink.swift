//
//  ImageWithLink.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/18/25.
//

import Ignite

struct ImageWithLink: HTML {
    enum ImageType {
        case appIcon, generic
    }

    var imagePath: String
    var imageDescription: String
    var imageType: ImageType = .generic
    var url: String

    var body: some HTML {
        Link(
            Image(imagePath, description: imageDescription)
                .resizable()
                .cornerRadius(.percent(Percentage(imageType == .generic ? 1 : 22)))
                .margin(.top, 4)
                .margin(.bottom, 16)
                .shadow(.black.opacity(imageType == .appIcon ? 0.15 : 0), radius: 6, x: 0, y: 4),
            target: url
        )
    }
}
