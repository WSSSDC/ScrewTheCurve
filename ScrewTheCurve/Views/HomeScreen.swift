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
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
