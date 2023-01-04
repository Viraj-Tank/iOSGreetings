import SwiftUI

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
