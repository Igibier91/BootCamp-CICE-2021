//
//  AppDelegate.swift
//  AppTableViewIntro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appCoreCoordinator: AppCoreCoordinatorProtocol = AppCoreCoordinator()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        if let windowDes = window{
            appCoreCoordinator.setPrincipalViewController(in: windowDes)
        }
        return true
    }


}

