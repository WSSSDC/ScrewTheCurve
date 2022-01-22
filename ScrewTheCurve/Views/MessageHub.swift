//
//  MessageHub.swift
//  ScrewTheCurve
//
//  Created by Arjun  Sarao on 2022-01-22.
//


import SwiftUI

struct MessageHub: View {
    var body: some View {
        NavigationView {
            List {
                Text("Arjun Sarao").padding(10)
                Text("Bram Ogus").padding(10)
                Text("Connor").padding(10)
                Text("Bob").padding(10)
                Text("Arjun").padding(10)
            }.navigationTitle("Messages")
        }
    }
}

struct MessageHub_Previews: PreviewProvider {
    static var previews: some View {
        MessageHub()
    }
}
