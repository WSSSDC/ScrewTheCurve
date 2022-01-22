//
//  SignUp.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI
import CryptoKit

extension Digest {
    var bytes: [UInt8] { Array(makeIterator()) }
    var data: Data { Data(bytes) }

    var hexStr: String {
        bytes.map { String(format: "%02X", $0) }.joined()
    }
}

func obfuscatePassword(_ password: String) -> String{
    return SHA256.hash(data: password.data(using: .utf8)!).hexStr
}

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct SignUp: View {
    struct User{
        var firstName: String
        var lastName: String
        var email: String
        var password: String
    }
    func sendToDB(){
        let user = User(
            firstName: firstName,
            lastName: lastName,
            email: email,
            password: obfuscatePassword(password));
        
    }
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            TextField("First Name", text: $firstName)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField("Last Name", text: $lastName)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField("Email", text: $email)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            Button(action: sendToDB){
                Text("Sign Up")
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

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
