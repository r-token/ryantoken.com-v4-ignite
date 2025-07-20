import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            NavBar()
            content
                .padding(.top, 50)
                .padding(.horizontal, 10)
            Footer()
        }
        .padding(.vertical, .em(1))
        .padding(.horizontal, .em(0.25))
    }
}
