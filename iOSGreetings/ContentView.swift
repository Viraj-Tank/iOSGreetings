import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            // ignore safe area will cover the whole screen
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

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [.blue,Color(red:139/255,green:80/255,blue:240/255)],
            startPoint: .topTrailing,
            endPoint: .bottomTrailing
        ).opacity(0.6).ignoresSafeArea()
    }
}

struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    let caption:[String] = [
        "Explore iOS 16 Programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge!"
    ]
    var body: some View {
        HStack {
            VStack(alignment: .leading,spacing: 4,content: {
                Text("Greetings!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(caption[captionIndex])
                    .font(.headline)
                    .fontWeight(.light)
            }).padding().onTapGesture {
                captionIndex = Int.random(in: 0..<caption.count)
            }
            Spacer()
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [.accentColor,.gray,.green,.purple]),
                                                     center: .center,
                                                     angle: .zero)
                              ,lineWidth: 15)
                .rotationEffect(isRotated ? .zero : .degrees(360))
                .frame(width: 70,height: 70)
                .onTapGesture {
                    withAnimation(Animation.easeIn) {
                        isRotated.toggle()
                    }
                }.padding()
        }
    }
}

struct MessagesView: View {
    let messages = [
        DataItemModel(name: "Greetings!", color: .green),
        DataItemModel(name: "Welcome to Swift programming", color: .gray),
        DataItemModel(name: "Are you ready to..", color: .yellow),
        DataItemModel(name: "start exploring?", color: .red),
        DataItemModel(name: "Boom!", color: .purple)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages, content: { msg in
                TextView(text: msg.name, color: msg.color)
            })
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    let text: String
    @State var color: Color
    let colors: [Color]=[
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        Color(red:0.5,green:0.5,blue:0.5),
        Color(red:0.2,green:0.3,blue:0.6),
        .purple,
        .cyan,
        .accentColor
    ]
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.5))
            .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
            .shadow(color: color.opacity(0.5), radius: 5,x: 5,y: 10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}


struct DataItemModel: Identifiable {
    var id = UUID()
    
    let name: String
    let color: Color
}



