//
//  NavBar.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/14/25.
//

import Ignite

public struct NavBar: HTML {
    public var body: some HTML {
        NavigationBar(logo: "Ryan Token") {
            Link("Home", target: Home())
            Link("About", target: About())
        }
        .navigationItemAlignment(.trailing)
    }
}
