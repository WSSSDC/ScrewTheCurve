//
//  FindConnections.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-22.
//

import SwiftUI

struct FindConnections: View {
    var body: some View {
        ScrollView {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color("bg_purple"))
                        .frame(width: 400, height: 700)
                    Image("profile1")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 400, height: 400)
                        .offset(y:-150)
                    Text("Arjun Sarao, 18")
                        .font(.system(size: 35))
                        .offset(x:-80, y:80)
                    Text("Hello, I am a 2nd year Data Science student, I am looking for friends to learn and work on projects with!")
                        .font(.system(size: 25))
                        .padding()
                        .offset(y:150)
                }
            }
        }
    }
}

struct FindConnections_Previews: PreviewProvider {
    static var previews: some View {
        FindConnections()
    }
}
