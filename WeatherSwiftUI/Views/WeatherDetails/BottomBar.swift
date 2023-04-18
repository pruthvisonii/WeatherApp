//
// Ios Project
//  Pruthvi - A00262875
//  Sakshi - A00262877



import SwiftUI

struct BottomBar: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Divider()
            
            HStack {
                Spacer()
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "list.bullet")
                        .foregroundColor(.primary)
                }
            }
        }
        .padding()
    }
}
