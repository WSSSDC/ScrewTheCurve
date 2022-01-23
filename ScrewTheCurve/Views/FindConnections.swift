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
            }.padding()
// Second Card Starts
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("bg_purple"))
                    .frame(width: 400, height: 700)
                Image("profile2")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 400, height: 400)
                    .offset(y:-150)
                Text("Bram Ogus, 21")
                    .font(.system(size: 35))
                    .offset(x:-80, y:80)
                Text("Yo, I'm a 4th year Math student, dm if u want me to screw more than just the lin-alg curve")
                    .font(.system(size: 25))
                    .padding()
                    .offset(y:160)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.red)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("MAT137")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.green)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("Math")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("More Math")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.orange)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("STAT231")
                    }
                }.offset(y:250)
            }.padding()
// Third Card Starts
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("bg_purple"))
                    .frame(width: 400, height: 700)
                Image("profile3")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 400, height: 400)
                    .offset(y:-150)
                Text("Connor Wilson, 59")
                    .font(.system(size: 35))
                    .offset(x:-50, y:80)
                Text("Hello, I am a 2nd year Comp Science student, I am looking for friends to start a company with!")
                    .font(.system(size: 25))
                    .padding()
                    .offset(y:160)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("CSC148")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.orange)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("CS135")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.green)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("DANK420")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.purple)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("ECE210")
                    }
                }.offset(y:250)
            }
// Fourth Card Starts Here
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("bg_purple"))
                    .frame(width: 400, height: 700)
                Image("profile4")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 400, height: 400)
                    .offset(y:-150)
                Text("Eugene, Unknown")
                    .font(.system(size: 35))
                    .offset(x:-50, y:80)
                Text("What the fuck did you just fucking say about me, you little bitch? I'll have you know I graduated top of my class in the Navy Seals, and I've been involved in numerous secret raids on Al-Quaeda, and I have over 300 confirmed kills. I am trained in gorilla warfare and I'm the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You're fucking dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that's just with my bare hands. Not only am I extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution your little \"clever\" comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn't, you didn't, and now you're paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You're fucking dead, kiddo.")
                    .font(.system(size: 7))
                    .padding()
                    .offset(y:160)
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("CSC148")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.orange)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("CS135")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.green)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("DANK420")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.purple)
                            .opacity(0.4)
                            .frame(width: 90, height: 30)
                        Text("ECE210")
                    }
                }.offset(y:250)
            }
        }
    }
}

struct FindConnections_Previews: PreviewProvider {
    static var previews: some View {
        FindConnections()
    }
}
