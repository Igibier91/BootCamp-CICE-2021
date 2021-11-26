//
//  AppDelegate.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 15/11/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
      let appCoreCoordinator: AppCoreCoordinatorProtocol = AppCoreCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        if let windowDes = window {
                    appCoreCoordinator.initialViewController(in: windowDes)
                }



        return true
    }



}

