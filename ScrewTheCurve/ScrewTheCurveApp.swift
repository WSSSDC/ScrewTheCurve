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
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    var body: some Scene {
        WindowGroup {
            HomeScreen()
        }
    }
    class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
          FirebaseApp.configure(options: .defaultOptions()!)
//          Auth.auth().signInAnonymously { authResult, err in
//              if let err = err{
//                  print("Error with auth \(err)")
//              }else{
//                  print("Auth Successful")
//              }
//          }
        return true
      }
    }
}
