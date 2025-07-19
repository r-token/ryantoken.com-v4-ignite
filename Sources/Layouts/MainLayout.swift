import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            NavBar()
            HStack {
                Spacer()
                content
                    .frame(maxWidth: 750)
                Spacer()
            }
        }
        .padding(.vertical, .em(1))
        .padding(.horizontal, .em(0.25))
    }
}
