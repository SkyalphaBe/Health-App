import SwiftUI
struct MainView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home",systemImage: "house")
                }
            HistoryView()
                .tabItem(){
                    Label("History",systemImage: "calendar")
                }
        }
    }
}
