//
//  TagFormatter.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/19/25.
//

struct TagFormatter {
    static func format(_ rawTag: String) -> String {
        let tag = Tag(rawValue: rawTag)
        switch tag {
        case .swift:
            return "Swift"
        case .swiftui:
            return "SwiftUI"
        case .swiftdata:
            return "SwiftData"
        case .ios:
            return "iOS"
        case .jamstack:
            return "Jamstack"
        case .web:
            return "Web"
        case .webrtc:
            return "WebRTC"
        case .serverless:
            return "Serverless"
        case .aws:
            return "AWS"
        case .cloud:
            return "Cloud"
        case .rewrite:
            return "Rewrite"
        case .career:
            return "Career"
        case .reflections:
            return "Reflections"
        case nil:
            return rawTag
        }
    }
}
