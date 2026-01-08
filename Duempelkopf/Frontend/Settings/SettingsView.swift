//
//  SettingsView.swift
//  Duempelkopf
//
//  Created by Emil Klerner on 08.01.26.
//
import SwiftUI

struct SettingsView: View{
    var body: some View{
        VStack{
            Image(systemName: "home")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("SettingsView")
        }
        .padding()
    }
}

#Preview {
    SettingsView()
}



