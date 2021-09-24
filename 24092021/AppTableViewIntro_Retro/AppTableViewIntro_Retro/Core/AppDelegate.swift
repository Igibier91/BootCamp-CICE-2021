//
//  AppDelegate.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appCoreCoordinator: AppCoreCoordinatorProtocol = AppCoreCoordinator()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        if let windowDes = window{
            appCoreCoordinator.setPrincipalVC(in: windowDes)
        }
        
        return true
    }


}

