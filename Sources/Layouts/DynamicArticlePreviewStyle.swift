//
//  DynamicArticlePreviewStyle.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/19/25.
//

import Ignite

struct DynamicArticlePreviewStyle: @preconcurrency ArticlePreviewStyle {
    @MainActor func body(content: Article) -> any HTML {
        Section {
            // Mobile layout: vertical stack with image on top
            mobileLayout(for: content)
                .class("d-block d-md-none")

            // Desktop layout: horizontal stack with image on left
            desktopLayout(for: content)
                .class("d-none d-md-flex")
        }
        .style(.backgroundColor, "var(--bs-secondary-bg, #f8fafc)")
        .cornerRadius(12)
        .border(.gray.opacity(0.15), width: 1)
        .shadow(.black.opacity(0.1), radius: 6, x: 0, y: 4)
        .margin(.bottom, .em(1.5))
    }

    // MARK: - Layout Components

    @MainActor
    private func mobileLayout(for article: Article) -> some HTML {
        Section {
            VStack(alignment: .leading) {
                if let image = article.image {
                    Link(
                        Image(image, description: article.imageDescription)
                            .resizable()
                            .cornerRadius(12)
                            .margin(.bottom, .em(0.5)),
                        target: article.path
                    )
                }

                articleContent(article, includesSpacer: false)
            }
        }
        .margin(.horizontal, .custom("auto")) // Center the content
    }

    @MainActor
    private func desktopLayout(for article: Article) -> some HTML {
        Section {
            HStack(alignment: .top) {
                if let image = article.image {
                    Link(
                        Image(image, description: article.imageDescription)
                            .resizable()
                            .frame(maxHeight: 180)
                            .cornerRadius(12),
                        target: article.path
                    )
                }

                articleContent(article, includesSpacer: true)
                    .frame(minWidth: 0) // Allow text to wrap properly
            }
            .class("align-items-stretch") // Ensure equal height columns
        }
    }

    @MainActor
    private func articleContent(_ article: Article, includesSpacer: Bool) -> some HTML {
        VStack(alignment: .leading) {
            Text {
                Link(article.title, target: article)
                    .role(.none)
                    .foregroundStyle(.body)
            }
            .padding(.bottom, 8)
            .font(.title5)
            .fontWeight(.semibold)

            if let subtitle = article.subtitle {
                Text(subtitle)
                    .font(.small)
                    .foregroundStyle(.secondary)
                    .margin(.bottom, .em(0.25))
                    .lineSpacing(1.25)
            }

            Text(markdown: "*\(article.date.formatted(date: .abbreviated, time: .omitted))*")
                .font(.small)
                .foregroundStyle(.secondary)

            // Tags - wrapped in Section to apply Bootstrap classes
            if let tags = article.tags, !tags.isEmpty {
                Section {
                    HStack {
                        ForEach(tags) { tag in
                            Span(tag.uppercased())
                                .font(.xSmall)
                                .fontWeight(.medium)
                                .foregroundStyle(.primary)
                                .background(.blue.opacity(0.1))
                                .padding(.horizontal, .em(0.75))
                                .padding(.vertical, .em(0.4))
                                .cornerRadius(6)
                                .margin(.trailing, .em(0.5))
                        }
                    }
                    .padding(.top, 16)
                }
                .class(includesSpacer ? "mt-auto" : "") // Push to bottom on desktop
            }
        }
        .padding(8)
        .padding(.top, 12)
        .padding(.horizontal, 24)
        .class(includesSpacer ? "d-flex flex-column h-100" : "") // Apply flexbox for desktop
    }
}
