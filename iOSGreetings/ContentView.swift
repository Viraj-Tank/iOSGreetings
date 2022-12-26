import SwiftUI

struct ContentView: View {
    
    let messages = [
        DataItemModel(name: "Greetings!", color: .green),
        DataItemModel(name: "Welcome to Swift programming", color: .gray),
        DataItemModel(name: "Are you ready to..", color: .yellow),
        DataItemModel(name: "start exploring?", color: .red),
        DataItemModel(name: "Boom!", color: .purple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading,spacing: 4,content: {
                Text("Greetings!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Exploring iOS 16 programming")
                    .font(.headline)
                    .fontWeight(.light)
            })
            
            
            ForEach(messages, content: { msg in
                TextView(text: msg.name, color: msg.color)
            })
            /*ForEach(0..<messages.count, content: { index in
                TextView(text: messages[index].name, color: messages[index].color)
            })*/
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    let text:String
    let color:Color
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.5))
            .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
            .shadow(color: color.opacity(0.5), radius: 5,x: 5,y: 10)
    }
}


struct DataItemModel: Identifiable {
    var id = UUID()
    
    let name: String
    let color: Color
}
