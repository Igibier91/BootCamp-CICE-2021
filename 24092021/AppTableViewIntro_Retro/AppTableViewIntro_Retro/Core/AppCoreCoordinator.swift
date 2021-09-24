//
//  AppCoreCoordinator.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import Foundation
import UIKit

protocol AppCoreCoordinatorProtocol{
    func setPrincipalVC(in window: UIWindow)
    
}

class AppCoreCoordinator{
    var actualVC: UIViewController!
       
}




extension AppCoreCoordinator: AppCoreCoordinatorProtocol{
    internal func setPrincipalVC(in window: UIWindow) {
        actualVC = ListaMesesViewController()
        window.rootViewController = actualVC
        window.makeKeyAndVisible()
    }
}
