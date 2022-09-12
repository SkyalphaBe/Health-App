import SwiftUI

struct WaterView: View {
    @State var progressValue:Float = 0.0
    @State var quantityValue:Float = 0.0
    @State var objectif:String=""
    @State var updateOBJ:Bool=true
    @State var buttonText:String="Update"
    @State var buttonTextD:String="ADD a Drink"
    @State private var sliderValue:Float = 0.0
    
    var body: some View {
        VStack{
            VStack{
                Text("Water Track")
                    .font(.system(size: 45))
                    .bold()
                    .foregroundColor(.green)
                HStack{
                    Text("Daily objectif : ")
                        .font(.title2)
                    Text(objectif + " ml")
                        .font(.title)
                }
                Spacer()
                ProgressBar(progress: self.$progressValue,counterOBJ: self.$quantityValue)
                    .frame(width: 200.0, height: 200.0)
                    .padding(20.0).onAppear(){
                        self.progressValue=0.0
                    }
                VStack{
                    HStack{
                        Image("lowGlass")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                            .opacity(0.3)
                        Slider(value:$sliderValue, in :10...500)
                        Image("fullGlass")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                            .opacity(0.3)
                            
                    }
                   
                    Button(buttonTextD){
                        self.quantityValue += sliderValue
                        let StringO = objectif
                        let OBjFl = Float(StringO)
                        self.progressValue += sliderValue/OBjFl!
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Your objectif : ")
                        .font(.callout)
                        .bold()
                    TextField("Enter the quantity", text: $objectif)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.green, lineWidth: 2)
                            )
                            .padding()
                            .disabled(updateOBJ)
                }.padding()
                Button(buttonText){
                    if(updateOBJ==true){
                        updateOBJ=false
                        buttonText="Confirm"
                        
                    }
                    else if(updateOBJ==false){
                        updateOBJ=true
                        buttonText="Update"
                    }
                    
                }
                Spacer()
            }
        }.padding()
    }
}

struct ProgressBar: View {
    @Binding var progress : Float
    @Binding var counterOBJ:Float
    var color: Color = Color.green

    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 30.0)
                .opacity(0.20)
                .foregroundColor(.gray)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress,1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round,lineJoin: .round))
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeIn(duration: 1.0))
            let valueI = Int(self.counterOBJ)
            let valueS = String(valueI)
            Text(valueS + " ml")
                .bold()
                .font(.system(size: 50))
            
        }
        
    }
}

struct WaterView_Previews: PreviewProvider {
    static var previews: some View {
        WaterView()
    }
}
