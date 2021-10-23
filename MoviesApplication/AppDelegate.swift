//
//  AppDelegate.swift
//  MoviesApplication
//
//  Created by Bengi on 23.10.2021.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        self.window = UIWindow()
        
        let mainView = SplashViewBuilder.build {
            print("Splash View Finalized.")
            self.initializeMainView()
        }
        window?.rootViewController = mainView
        window?.makeKeyAndVisible()
        
        return true
    }
    
    private func fireMainView() {
        let mainView = MainTabBarBuilder.build()
        window?.rootViewController = mainView
        window?.makeKeyAndVisible()
    }
    
    private func initializeMainView() {
        DispatchQueue.main.async {
            UIView.transition(with: self.window!, duration: 1, options: .transitionCrossDissolve) {
                // As an animation, get fireMainView()
                self.fireMainView()
            }
        }
    }
}
