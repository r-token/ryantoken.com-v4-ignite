//
//  Themes.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

protocol BaseTheme: Theme {}

// Default implementation for shared values
extension BaseTheme {}

// Values not set here default to stock light theme colors
struct LightTheme: BaseTheme {
    var colorScheme: ColorScheme = .light
    var accent: Color { Color(hex: "#6366f1") } // works for .primary style
    var secondaryAccent: Color { Color(hex: "#6366f1") }
    var secondary: Color { Color(hex: "#6b7280") }
    var link: Color { Color(hex: "#6366f1") }
}

// Values not set here default to stock dark theme colors
struct DarkTheme: BaseTheme {
    var colorScheme: ColorScheme = .dark
    var accent: Color { Color(hex: "#7dd3fc") }
    var secondaryAccent: Color { Color(hex: "#e2e8f0") }
    var secondary: Color { Color(hex: "#9ca3af") }
    var link: Color { Color(hex: "#7dd3fc") }
}
