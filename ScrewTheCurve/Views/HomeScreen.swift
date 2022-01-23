//
//  HomeScreen.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        TabView{
            ClassSelection()
                .tabItem{
                    Image(systemName: "book")
                    Text("Classes")
                }
            SignIn()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("User Info")
                }
            FindConnections()
                .tabItem{
                    Image(systemName: "bonjour")
                    Text("Make A Connection")
                }
            Connections()
                .tabItem{
                    Image(systemName: "wifi")
                    Text("Connections")
                }
            
            UserSettings()
                .tabItem {
                    Image(systemName: "gear.circle")
                    Text("Settings")
                }
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
