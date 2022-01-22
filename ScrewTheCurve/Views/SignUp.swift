//
//  SignUp.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI
import CryptoKit
import Firebase


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
    func sendToDB(){
        let db = Firestore.firestore()
        db.collection("Users")
            .document(username)
            .setData(
                ["Full Name": fullName,
                 "Username": username,
                 "Email": email,
                 "Password": obfuscatePassword(password),
                ]
            ){ err in
                if let err = err {
                    print("Error writing document: \(err)")
                } else {
                    print("Document successfully written!")
                    signUpSuccess = true
                }
            }
    }
    @State var fullName: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var signUpSuccess: Bool = false
    var body: some View {
        switch signUpSuccess{
            case false:
                VStack{
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.bottom, 20)
                    TextField("Full Name", text: $fullName)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    TextField("Username", text: $username)
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
            case true:
                AboutYou()
                    .navigationBarBackButtonHidden(true)
            
        }

    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
.previewInterfaceOrientation(.portrait)
    }
}
