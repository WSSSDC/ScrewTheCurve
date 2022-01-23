//
//  Connections.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-22.
//

import SwiftUI
import Firebase
final class Connection: Identifiable{
    var id: Int = 0
    var name: String = ""
}
func getConnections() -> [Connection]{
    let db = Firestore.firestore()
    let user = "ogus.bram@gmail.com"
    var data: [Connection] = []
    db.collection("Users").document(user).getDocument { (document, err) in
        if let document = document, document.exists {
            var idx = 0
            for connection in document.data()!["Connections"] as! [String]{
                let temp = Connection()
                temp.id = idx
                temp.name = connection
                data.append(temp)
                idx += 1
            }
        }
    }
    return data
}
struct Connections: View {
    @State var showModal: Bool = false
    var body: some View {
        ScrollView{
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("bg_purple"))
                    .frame(width: 400, height: 700)
                Image("profile1")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 400, height: 400)
                    .offset(y:-160)
                Text("Arjun Sarao, 18")
                    .font(.system(size: 35))
                    .offset(x:-70, y:80)
                Text("Hello, I am a 2nd year Data Science student, I am looking for friends to learn and work on projects with!")
                    .font(.system(size: 25))
                    .padding()
                    .offset(y:160)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.green)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("MAT137")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("CS135")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.orange)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("DANK420")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.red)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("STAT231")
                    }
                }.offset(y:250)
                
                ZStack{
                    Button(action: {showModal = true}){
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.blue)
                                .opacity(0.4)
                                .frame(width: 350, height: 30)
                            Text("Socials")
                        }
                    }.offset(y: 325)
                        .sheet(isPresented: $showModal){
                            SocialList()
                        }
                }
            }.padding()
        }
    }
}

struct Connections_Previews: PreviewProvider {
    static var previews: some View {
        Connections()
    }
}
