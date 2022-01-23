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
    var body: some View {
        Text("Hello, World")
    }
}

struct Connections_Previews: PreviewProvider {
    static var previews: some View {
        Connections()
    }
}
