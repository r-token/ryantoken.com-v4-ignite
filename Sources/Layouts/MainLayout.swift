import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            NavBar()
            content
            Spacer()
        }
        .padding(.all, .em(1))
        .padding(.horizontal, .em(4))
    }
}
