//
//  ScrewTheCurveApp.swift
//  ScrewTheCurve
//
//  Created by Bram Ogus on 2022-01-21.
//

import SwiftUI
import Firebase
@main
struct ScrewTheCurveApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            IntroScreen()
        }
    }
    
}
