import SwiftUI

struct ContentView: View {
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

/// it is background which contains linear gradient
struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(
            //            colors: [.blue,Color(red:139/255,green:80/255,blue:240/255)],
            colors: [Color("blue"),Color("blue2")],
            startPoint: .topTrailing,
            endPoint: .bottomTrailing
        ).opacity(0.8).ignoresSafeArea()
        // ignore safe area will cover the whole screen
    }
}

struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    let caption:[LocalizedStringKey] = [
        LocalizedStringKey("Explore iOS 16 Programming"),
        LocalizedStringKey("Learning how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("A quest for knowledge!")
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
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [.red,.gray,.green,.yellow]),
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
        ContentView().preferredColorScheme(.dark)
    }
}

// State work like observable variable
// it will also update view when value is changed just like setState((){ }) in flutter
struct TextView: View {
    let text: LocalizedStringKey
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
    
    let name: LocalizedStringKey
    let color: Color
}



