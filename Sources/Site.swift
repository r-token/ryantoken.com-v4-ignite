import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = RyanTokenSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct RyanTokenSite: Site {
    var name = "Ryan Token"
    var titleSuffix = " - Ryan Token"
    var url = URL(static: "https://www.ryantoken.com")
    var builtInIconsEnabled = true

    var author = "Ryan Token"

    var homePage = Home()
    var layout = MainLayout()
    var lightTheme: (any Theme)? = LightTheme()
    var darkTheme: (any Theme)? = DarkTheme()

    var staticPages: [any StaticPage] {
        Home()
        About()
    }

    var articlePages: [any ArticlePage] {
        ArticleLayout()
    }
}
