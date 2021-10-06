//
//  AppleSignInFirebaseApp.swift
//  AppleSignInFirebase
//
//  Created by Danh Tu on 06/10/2021.
//

import SwiftUI
import Firebase

@main
struct AppleSignInFirebaseApp: App {
    // Calling Delegate
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// Initializing Firebase
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
