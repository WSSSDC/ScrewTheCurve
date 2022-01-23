//
//  AboutYou.swift
//  ScrewTheCurve
//
//  Created by Arjun Sarao on 2022-01-22.
//

import SwiftUI
import Firebase
struct AboutYou: View {
    
    func outtaHere(){
        let firebaseAuth = Firebase.Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    @State private var biography: String = ""
    var body: some View {
        ZStack {
            Color("bg_purple")
                .ignoresSafeArea()
            VStack {
                Text("About Me")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .offset(y:-200)
                    .padding()
                Image("profile1")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 150.0, height: 150.0)
                    .offset(y: -200)
                    .padding()
                TextField("Please enter a short bio here:", text: $biography)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .offset(y: -200)
                Button(action: outtaHere){
                    Text("Sign Out")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(width: 300)
                        .padding(10)
                        .background(Color("nav_black"))
                        .cornerRadius(40)
                }.offset(y: 200)
            }.padding()

    }
}

struct AboutYou_Previews: PreviewProvider {
    static var previews: some View {
        AboutYou()
    }
}
}
