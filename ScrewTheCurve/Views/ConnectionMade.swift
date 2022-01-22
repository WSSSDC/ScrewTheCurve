//
//  ConnectionMade.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI

struct ConnectionMade: View {
    var body: some View {
        ZStack {
            Color("bg_purple")
                .ignoresSafeArea()
            VStack {
                Text("You're connected with Arjun Sarao!")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(width: 100, height: 100)
                            .padding()
                            .offset(y:-85)
                        Image("profile1")
                            .resizable()
                            .frame(width: 80.0, height: 80.0)
                            .offset(y:-85)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(width: 100, height: 100)
                            .padding()
                            .offset(y:-85)
                        Image("profile2")
                            .resizable()
                            .frame(width: 80.0, height: 80.0)
                            .offset(y:-85)
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(width: 400, height: 400)
                    Text("Arjun Sarao, 18")
                        .font(.system(size: 40))
                        .offset(x: -55, y:-150)
                    Text("Hello, I am a 2nd yea Data Science student, I am looking for friends to learn and work on projects with!")
                        .font(.system(size: 25))
                        .padding()
                        .offset(y:-70)
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
                            Text("CS135")
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.blue)
                                .opacity(0.4)
                                .frame(width: 90, height: 30)
                            Text("DANK420")
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.orange)
                                .opacity(0.4)
                                .frame(width: 90, height: 30)
                            Text("STAT231")
                        }
                    }
                    NavigationLink(destination: SignIn()) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.red)
                                    .frame(width: 170, height: 75)
                                    .offset(y:140)
                                Text("Pass")
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .offset(y:140)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.green)
                                    .frame(width: 170, height: 75)
                                    .offset(y:140)
                                Text("Yes!")
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .offset(y:140)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ConnectionMade_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionMade()
    }
}
