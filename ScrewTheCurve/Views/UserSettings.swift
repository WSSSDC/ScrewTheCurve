//
//  UserSettings.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-22.
//

import SwiftUI
import Firebase

func outtaHere(){
    let firebaseAuth = Firebase.Auth.auth()
    do {
      try firebaseAuth.signOut()
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
}
struct UserSettings: View {
    var body: some View {
        VStack{
            Button(action: outtaHere){
                Text("Sign Out")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 400, height: 100)
                    .background(.green)
                    .cornerRadius(15.0)
            }
        }.padding()
        
    }
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        UserSettings()
    }
}
