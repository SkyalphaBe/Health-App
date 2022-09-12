import SwiftUI
struct CalculIMCView : View {
    var body: some View {
        Text("Detail view")
            .navigationBarTitle("IMC calculation", displayMode: .inline)
        
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        CalculIMCView()
    }
}
