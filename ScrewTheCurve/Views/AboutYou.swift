//
//  AboutYou.swift
//  ScrewTheCurve
//
//  Created by Arjun Sarao on 2022-01-22.
//

import SwiftUI
struct AboutYou: View {
    @State private var biography: String = ""
    var body: some View {
        ZStack {
            Color("bg_purple")
                .ignoresSafeArea()
            VStack {
                Text("About Me")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Spacer()
                Image("profile1")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 150.0, height: 150.0)
                    .offset(y:-550)
                Text("Bio")
                    .offset(x:-170, y:-550)
                    .font(.system(size: 25))
                TextField("Please enter a short about your here:", text: $biography)
                    .offset(x:20, y:-550)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

        }

    }
}

struct AboutYou_Previews: PreviewProvider {
    static var previews: some View {
        AboutYou()
    }
}
}
