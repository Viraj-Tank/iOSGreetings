import SwiftUI

/// this is view that container message
/// which changes color on click
struct MessagesView: View {
    // add these colors in assets then choose new color for both the appereance
    let messages = [
        DataItemModel(name: LocalizedStringKey("Greetings"), color: Color("green")),
        DataItemModel(name: LocalizedStringKey("Welcome to Swift programming"), color: Color("gray")),
        DataItemModel(name: LocalizedStringKey("Are you ready to.."), color: Color("yellow")),
        DataItemModel(name: LocalizedStringKey("start exploring?"), color: Color("red")),
        DataItemModel(name: LocalizedStringKey("Boom!"), color: Color("purple"))
    ]
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(messages, content: { msg in
                    TextView(text: msg.name, color: msg.color)
                })
            }.padding()
            Spacer()
        }
    }
}

struct MessagesViewPreview:PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
