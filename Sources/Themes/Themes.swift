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
    var lineSpacing: LengthUnit { .em(1.5) }
    var bodyFontSize: ResponsiveValues { .init(LengthUnit.px(18)) }
    var h4Size: ResponsiveValues { .init(LengthUnit.px(18)) }
}

// Values not set here default to stock light theme colors
struct LightTheme: BaseTheme {
    var colorScheme: ColorScheme = .light

    var accent: Color { Color(hex: "#6366f1") } // blue ribbon
    var secondaryAccent: Color { Color(hex: "#6366f1") } // blue ribbon
    var secondary: Color { Color(hex: "#6b7280") } // pale sky
    var secondaryBackground: Color { Color(hex: "#f8fafc") } // alabaster
    var link: Color { Color(hex: "#6366f1") } // blue ribbon
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
}
