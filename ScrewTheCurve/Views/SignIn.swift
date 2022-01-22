//
//  SignIn.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI
import CryptoKit

struct SignIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    func validateUser(){
        
    }
    var body: some View {
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
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
