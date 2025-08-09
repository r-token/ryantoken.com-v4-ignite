//
//  Themes.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

protocol BaseTheme: Theme {}

// Default implementation for shared values
extension BaseTheme {
    var siteWidth: ResponsiveValues { .init(medium: .px(750)) }

    // Prefer Avenir Next for the core font
    var font: Font { .init(name: "Avenir Next, system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, Liberation Sans, sans-serif", weight: .regular) }

    // Prefer Menlo for monospaced font (code blocks)
    var monospaceFont: Font { .init(name: "Menlo, SFMono-Regular, Monaco, Consolas, Liberation Mono, Courier New, monospace", weight: .regular) }

    var codeBlockFontSize: LengthUnit { .px(16) }
    var inlineCodeFontSize: LengthUnit { .px(16) }

    var h1Size: ResponsiveValues { .init(LengthUnit.px(32)) }  // 1.78x
    var h2Size: ResponsiveValues { .init(LengthUnit.px(28)) }  // 1.56x
    var h3Size: ResponsiveValues { .init(LengthUnit.px(22)) }  // 1.22x
    var h4Size: ResponsiveValues { .init(LengthUnit.px(20)) }  // 1.11x
    var h5Size: ResponsiveValues { .init(LengthUnit.px(18)) }  // Same as body
    var h6Size: ResponsiveValues { .init(LengthUnit.px(16)) }  // 0.89x body

    var bodyFontSize: ResponsiveValues { .init(LengthUnit.px(18)) }
    var lineSpacing: LengthUnit { .em(1.5) }
    var headingLineSpacing: LengthUnit { .em(2) }
}

// Values not set here default to stock light theme colors
struct LightTheme: BaseTheme {
    var colorScheme: ColorScheme = .light

    var accent: Color { Color(hex: "#6366f1") } // blue ribbon
    var secondaryAccent: Color { Color(hex: "#6366f1") } // blue ribbon
    var secondary: Color { Color(hex: "#6b7280") } // pale sky
    var secondaryBackground: Color { Color(hex: "#f8fafc") } // alabaster
    var link: Color { Color(hex: "#6366f1") } // blue ribbon
    var hoveredLink: Color { Color(hex: "#4f46e5") } // purple heart

    var syntaxHighlighterTheme: HighlighterTheme { .solarizedLight }
}

// Values not set here default to stock dark theme colors
struct DarkTheme: BaseTheme {
    var colorScheme: ColorScheme = .dark

    var accent: Color { Color(hex: "#7dd3fc") } // malibu blue
    var secondaryAccent: Color { Color(hex: "#e2e8f0") } // mystic gray
    var secondary: Color { Color(hex: "#9ca3af") } // gray chateau
    var background: Color { Color(hex: "#1e293b") } // ebony clay
    var secondaryBackground: Color { Color(hex: "#334155") } // pickled bluewood
    var link: Color { Color(hex: "#7dd3fc") } // malibu
    var hoveredLink: Color { Color(hex: "#38bdf8") } // picton blue

    var syntaxHighlighterTheme: HighlighterTheme { .githubDark }
}
