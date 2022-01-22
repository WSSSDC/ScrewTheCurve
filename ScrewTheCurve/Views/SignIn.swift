//
//  SignIn.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI
import CryptoKit
import Firebase

struct SignIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State var loginSuccess: Bool = false
    func validateUser(){
        let db = Firestore.firestore()
        let docRef = db.collection("Users").document(username)
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                if document.get("Password") as! String == obfuscatePassword(password){
                    print("Login Successful")
                    loginSuccess = true
                }
            }else{
                print("Document does not exist")
            }
            
        }
        
    }
    var body: some View {
        switch loginSuccess{
        case false:
            VStack{
                Text("Sign In")
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                TextField("Username", text: $username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Button(action: validateUser){
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(.green)
                        .cornerRadius(15.0)
                }
            }.padding()
        case true:
            HomeScreen()
        }

    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
