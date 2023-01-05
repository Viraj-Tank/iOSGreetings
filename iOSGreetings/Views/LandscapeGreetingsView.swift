
import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
        }
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
