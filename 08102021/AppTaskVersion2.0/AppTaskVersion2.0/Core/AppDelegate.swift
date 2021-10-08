//
//  AppDelegate.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // Ya lo hacemos después de hacer el coordinador
    
    var window: UIWindow?
    let appCoreCoordinator: AppCoreCoordiantorProtocol = AppCoreCoordinator()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        if let windowDes = window {
            appCoreCoordinator.initialViewController(in: windowDes)
        }


        return true
    }


}

