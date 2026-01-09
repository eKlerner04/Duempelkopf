import SwiftUI

struct HomeView: View {
    private let goldAccent = Color(red: 0.85, green: 0.65, blue: 0.13)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Text("TestHallo")
            }//ZStack
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(goldAccent)
                            .font(.system(size: 20))
                    }
                }
            }//toolbar
        }//NavigationStack
    }
}

#Preview {
    HomeView()
}

