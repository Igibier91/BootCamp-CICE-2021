//
//  AppCoreCoordinator.swift
//  AppUserDefault
//
//  Created by Ignacio Gilabert Bernal on 2/10/21.
//

import Foundation
import UIKit

protocol AppCoreCoordinatorProtocol{
    func initialApplication(with window: UIWindow)
}

final class AppCoreCoordinator{
    
    var actualVC = UIViewController()
    
}

extension AppCoreCoordinator: AppCoreCoordinatorProtocol{
    func initialApplication(with window: UIWindow) {
        self.actualVC = UserDataCoordinator.navigation()
        window.rootViewController = self.actualVC
        window.makeKeyAndVisible()
    }
}
