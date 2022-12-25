import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Greetings!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.green.opacity(0.5))
                .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.green.opacity(0.5), radius: 5,x: 5,y: 10)
            
            Text("Welcome to Swift programming")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.gray.opacity(0.5))
                .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.gray.opacity(0.5), radius: 5,x: 5,y: 10)
            
            Text("Are you ready to..")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.yellow)
                .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.yellow.opacity(0.5), radius: 5,x: 5,y: 10)
            
            Text("start exploring?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.red.opacity(0.5))
                .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.red.opacity(0.5), radius: 5,x: 5,y: 10)
            
            Text("Boom!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.purple.opacity(0.5))
                .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.purple.opacity(0.9), radius: 5,x: 5,y: 10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
