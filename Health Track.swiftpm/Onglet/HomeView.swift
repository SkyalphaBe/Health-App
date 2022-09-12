import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            
            List{
                Section(header : Text("Personnal imformation").fontWeight(.heavy).foregroundColor(.accentColor)){
                    NavigationLink(destination: DataView()){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Data")
                                    .font(.body)
                                Text("Modify your data")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "cross.case")
                                .foregroundColor(.red)
                        }
                    }
                }
                Section(header: Text("Calculation").fontWeight(.heavy).foregroundColor(.accentColor)){
                    NavigationLink(destination: CalculIMCView()) {
                        HStack{
                            VStack(alignment: .leading){
                                Text("IMC")
                                    .font(.body)
                                Spacer()
                                Text("Calculate your IMC")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "figure.walk")
                                .foregroundColor(.yellow)
                            
                        }
                        
                    }
                    NavigationLink(destination: OtherView()) {
                        HStack{
                            VStack(alignment:.leading){
                                Text("Other")
                                    .font(.body)
                                Text("Available later...")
                                    .foregroundColor(.gray)
                                
                            }
                            Spacer()
                            Image(systemName: "brain.head.profile")
                                .foregroundColor(.purple)
                        }
                        
                    }
                }
                Section(header : Text("Nutrition ").fontWeight(.heavy).foregroundColor(.accentColor)){
                    NavigationLink(destination: WaterView()){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Water tracking")
                                    .font(.body)
                                Text("Check your drink")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "cup.and.saucer")
                                .foregroundColor(.blue)
                        }
                    }
                    NavigationLink(destination: CaloriesView()){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Calories tracking")
                                    .font(.body)
                                Text("Follow your consumption ")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "fork.knife")
                                .foregroundColor(.orange)
                        }
                    }
                }
                .navigationBarTitle("Health Track")
            }
        }
    }
}
