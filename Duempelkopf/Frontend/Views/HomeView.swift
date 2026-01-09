import SwiftUI

struct HomeView: View {
    private let goldAccent = Color(red: 0.85, green: 0.65, blue: 0.13)
    private let darkGreen = Color(red: 0.05, green: 0.25, blue: 0.18)
    private let pokerGreen = Color(red: 0.09, green: 0.35, blue: 0.25)

    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [darkGreen,pokerGreen]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ).ignoresSafeArea()
                
                
                NavigationLink{
                    SkatGameView()
                } label: {
                    Text("Skat")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(goldAccent)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding()
                
                
                
                
            }//ZStack
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Home")
                        .foregroundStyle(goldAccent)
                        .font(.headline)
                }
            }
            
            
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

