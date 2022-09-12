import SwiftUI

struct OtherView: View {
    var body: some View {
        Text("OtherView")
            .navigationBarTitle("Other view", displayMode: .inline)
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
