
import SwiftUI

struct MainView: View {
    
    // create these variable to determine to screens height and width
    // for more details
    // https://developer.apple.com/design/human-interface-guidelines/foundations/layout/
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        if horizontalSizeClass == .compact &&
            verticalSizeClass == .regular {
            
            // the it is portrait mode
            GreetingsView()
        } else {
            //landscape mode
            LandscapeGreetingsView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
