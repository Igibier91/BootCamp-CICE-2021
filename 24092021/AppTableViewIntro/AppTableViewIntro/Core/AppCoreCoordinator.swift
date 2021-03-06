//
//  AppCoreCoordinator.swift
//  AppTableViewIntro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import Foundation
import UIKit

protocol AppCoreCoordinatorProtocol {
    func setPrincipalViewController(in window: UIWindow)
}


final class AppCoreCoordinator {
    
    var actualViewController: UIViewController!
    
}
    
extension AppCoreCoordinator: AppCoreCoordinatorProtocol{

    internal func setPrincipalViewController(in window: UIWindow){
        actualViewController = ListaMesesViewController()
        window.rootViewController = actualViewController
        window.makeKeyAndVisible()
        
    }
}

