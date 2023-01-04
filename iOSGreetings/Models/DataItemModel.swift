
import SwiftUI

struct DataItemModel: Identifiable {
    var id = UUID()
    
    let name: LocalizedStringKey
    let color: Color
}
