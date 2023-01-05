import SwiftUI

struct GreetingsView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
                
                /*ForEach(0..<messages.count, content: { index in
                 TextView(text: messages[index].name, color: messages[index].color)
                 })*/
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView().preferredColorScheme(.dark)
    }
}





