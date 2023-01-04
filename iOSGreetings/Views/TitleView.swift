import SwiftUI

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

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
