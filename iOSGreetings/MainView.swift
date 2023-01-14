
import SwiftUI
// MARK: this is main view
struct MainView: View {
    
    // create these variable to determine to screens height and width
    // for more details
    // https://developer.apple.com/design/human-interface-guidelines/foundations/layout/
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    @Binding var layoutDirection: LayoutDirection
    
    var body: some View {
        if horizontalSizeClass == .compact &&
            verticalSizeClass == .regular {
            // TODO: open portrait view
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionView(
                                language: $language,
                                layoutDirection: $layoutDirection
                            )
                        }
                    }
            }
        } else {
            // TODO: open landscape mode
            LandscapeGreetingsView()
        }
    }
}

// MARK: it only displays preview inside xcode
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(language: .constant("en"), layoutDirection: .constant(.leftToRight))
    }
}
