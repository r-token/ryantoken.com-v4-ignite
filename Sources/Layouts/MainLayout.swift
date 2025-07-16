import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            NavBar()
            HStack {
                Spacer()
                content
                    .frame(maxWidth: 800)
                Spacer()
            }
        }
        .padding(.all, .em(1))
    }
}
