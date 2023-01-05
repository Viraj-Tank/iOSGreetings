
import SwiftUI

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

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Hello", color: .purple)
    }
}
