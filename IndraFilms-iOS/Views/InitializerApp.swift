import SwiftUI

@main
struct InitializerApp: App {
    var body: some Scene {
        WindowGroup {
			MovieView(viewModel: .init())
        }
    }
}
