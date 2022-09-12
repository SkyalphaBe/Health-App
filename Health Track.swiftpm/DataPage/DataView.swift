import SwiftUI

struct DataView: View {
    @State var weightVal : String="80"
    @State var heightVal : String="180"
    @State var fistName : String="None"
    @State var lastName:String="None"

    var body: some View {
        List{
            HStack{
                Spacer()
                Image("LogoPersonne")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(15.0)
                Spacer()
            }
            
            Section(header: Text("Personnal imforation").fontWeight(.heavy).foregroundColor(.accentColor)){
                HStack{
                    Text("First Name")
                        .bold()
                    Spacer()
                    Text(fistName)
                        .font(.system(size: 30))
                        .foregroundColor(.green)
                        .bold()
                }
                HStack{
                    Text("Last Name")
                        .bold()
                    Spacer()
                    Text(lastName)
                        .font(.system(size: 30))
                        .foregroundColor(.green)
                        .bold()
                }
            }
            
            Section(header: Text("Mensuration").fontWeight(.heavy).foregroundColor(.accentColor)){
                HStack{
                    Text("Weight")
                        .bold()
                    Spacer()
                    Text(weightVal+" Kg")
                        .font(.system(size: 30))
                        .foregroundColor(.green)
                        .bold()
                }
                HStack{
                    Text("Height")
                        .bold()
                    Spacer()
                    Text(heightVal+" cm")
                        .font(.system(size: 30))
                        .foregroundColor(.green)
                        .bold()
                    
                
                    
                }
                //TextField("Your weight",text: $weightVal)
                //TextField("Your height",text: $heightVal)
            }
            
        }
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
