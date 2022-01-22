//
//  IntroScreen.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI

struct IntroScreen: View {
    var body: some View {
            ZStack{
                Image("people_talking")
                Ellipse()
                    .fill(Color("bg_purple"))
                    .frame(width: 1250, height: 1000)
                    .offset(x: 0, y: 550)
                VStack {
                    Text("Make a friend,")
                        .font(.largeTitle)
                    Text("Expand your connections!")
                        .font(.largeTitle)
                    Text("Having lots of friends will")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("make your life more colorful!")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }.offset(x: 0, y: 150)
                NavigationLink(destination: SignUp()){
                    ZStack{
                    Circle()
                        .fill(Color("nav_black"))
                        .frame(width: 90, height: 90)
                        .shadow(color: .black, radius: 2)
                        .offset(y:365)
                        Image("chevron_right")
                            .offset(x:0,y:365)
                }
            }
        }
    }
}

struct IntroScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntroScreen()
    }
}
