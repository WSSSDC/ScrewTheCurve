//
//  SocialList.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-23.
//

import SwiftUI

struct SocialList: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Discord: Darkhawk727#7201")
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(.blue)
                    .cornerRadius(25)
                Text("Instagram: @Darkhawk727")
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(.pink)
                    .cornerRadius(25)
                Text("Messenger: Darkhawk727")
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(.blue)
                    .cornerRadius(25)
            }.navigationTitle("Social Media")
        }
    }
}

struct SocialList_Previews: PreviewProvider {
    static var previews: some View {
        SocialList()
    }
}
