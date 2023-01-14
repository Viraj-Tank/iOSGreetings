
import SwiftUI

struct LanguageOptionView: View {
    
    @Binding var language: String
    @Binding var layoutDirection: LayoutDirection
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(action: {
                    language = "en"
                    layoutDirection = .leftToRight
                }, label: {
                    Text("English")
                })
                
                Button(action: {
                    language = "fr"
                    layoutDirection = .leftToRight
                }, label: {
                    Text("French")
                })
                
                Button(action: {
                    language = "he"
                    layoutDirection = .rightToLeft
                }, label: {
                    Text("Hebrew")
                })
            }
    }
}

struct LanguageOptionView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageOptionView(language: .constant("en"), layoutDirection: .constant(.leftToRight))
    }
}
