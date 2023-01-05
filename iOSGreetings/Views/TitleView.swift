import SwiftUI

struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    var body: some View {
        HStack {
            GreetingsTextView(captionIndex:$captionIndex)
            Spacer()
            RotatableCircleView(isRotated: $isRotated)
        }
    }
}

struct VerticalTitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    var body: some View {
        VStack(alignment:.leading) {
            GreetingsTextView(captionIndex:$captionIndex)
            RotatableCircleView(isRotated: $isRotated)
            Spacer()
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalTitleView()
    }
}



//whenever we use binding
//remove intialization of variable
//then we need to assign variable a dollar as below in captionIndex
struct GreetingsTextView: View {
    @Binding var captionIndex: Int
    
    //LocalizedStringKey is used when we want app to be multilingual
    let caption:[LocalizedStringKey] = [
        LocalizedStringKey("Explore iOS 16 Programming"),
        LocalizedStringKey("Learning how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("A quest for knowledge!")
    ]
    var body: some View {
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
    }
}


struct RotatableCircleView: View {
    @Binding var isRotated: Bool
    var body: some View {
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
