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
    @State var email: String = ""
    @State private var password: String = ""
    @State var loggedIn: Bool = false
    func validateUser(){
        Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
            if error != nil{
                print(error ?? "")
            }else{
                print("Success")
            }
        }
        
    }
    var body: some View {
        let _ = Firebase.Auth.auth().addStateDidChangeListener { auth, user in
            if user != nil{
                loggedIn = true
            }else{
                loggedIn = false
            }
         }
        switch loggedIn{
        case false:
            NavigationView{
                VStack{
                    Text("Sign In")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                        .padding(.bottom, 20)
                    TextField("Email", text: $email)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                        .disableAutocorrection(true)
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
                    NavigationLink(destination: SignUp()){
                        Text("Don't have an account? Sign up here!")
                    }.padding()
                }.padding()
            }.padding()
        case true:
            AboutYou()
        }

    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
