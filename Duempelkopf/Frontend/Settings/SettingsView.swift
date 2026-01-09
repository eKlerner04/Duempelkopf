//
//  SettingsView.swift
//  Duempelkopf
//
//  Created by Emil Klerner on 08.01.26.
//
import SwiftUI

struct SettingsView: View{
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
                
                
                Text("Settings View")
                    .foregroundStyle(Color.white)
            }//VStack
            
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Settings")
                        .foregroundStyle(goldAccent)
                        .font(.headline)
                }
            }

        }
    }//NavigationStack
}

#Preview {
    SettingsView()
}



