import SwiftUI

struct SkatGameView: View{
    private let goldAccent = Color(red: 0.85, green: 0.65, blue: 0.13)
    private let darkGreen = Color(red: 0.05, green: 0.25, blue: 0.18)
    private let pokerGreen = Color(red: 0.09, green: 0.35, blue: 0.25)

    var body: some View{
        NavigationStack{
            ZStack{
                LinearGradient(
                    gradient: Gradient(colors: [darkGreen,pokerGreen]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ).ignoresSafeArea()
                
                Text("SkatGameViewText")
                    .foregroundStyle(Color.white)
            }//VStack
            
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("SkatGameView")
                        .foregroundStyle(goldAccent)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    SkatGameView()
}
