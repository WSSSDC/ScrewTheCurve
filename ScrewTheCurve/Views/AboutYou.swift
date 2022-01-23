//
//  AboutYou.swift
//  ScrewTheCurve
//
//  Created by Arjun Sarao on 2022-01-22.
//

import SwiftUI
import Firebase
struct AboutYou: View {
    @State private var biography: String = ""
    @State private var imageURL: String = ""
    func addImage(){
        let changeRequest = Firebase.Auth.auth().currentUser?.createProfileChangeRequest()
        if imageURL != ""{
            changeRequest?.photoURL = URL(string: imageURL)
            changeRequest?.commitChanges {err in
                if err != nil{
                    print(err ?? "")
                }else{
                    print("Successfully changed icon")
                }
            }
        }
        
    }
    func saveBio(){
        let db = Firestore.firestore()
        let user = Firebase.Auth.auth().currentUser!
        db.collection("Users").document(user.email!).updateData(["Bio": biography])
    }
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
                AsyncImage(url: Firebase.Auth.auth().currentUser!.photoURL){phase in
                    if let image = phase.image{
                        image
                            .resizable()
                        
                    }else if phase.error != nil{
                        Color.red
                    }else{
                        Color.blue
                    }
                }
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 150.0, height: 150.0)
                    .offset(y: -200)
                    .padding()
                TextField("Please enter a short bio here:", text: $biography)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .offset(y: -200)
                    .overlay(
                        Button(action: saveBio){
                            Image(systemName: "plus")
                        }.offset(x: 150, y: -200)
                    )
                TextField("Enter new profile image URL here:", text: $imageURL)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .offset(y: -200)
                    .overlay(
                        Button(action: addImage){
                            Image(systemName: "plus")
                        }.offset(x: 150, y: -200)
                    )
            }.padding()
        }
    }
}
struct AboutYou_Previews: PreviewProvider {
    static var previews: some View {
        AboutYou()
    }
}
