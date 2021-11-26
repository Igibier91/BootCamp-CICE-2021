//
//  AppCoreCoordinator.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 15/11/21.
//

import Foundation
import UIKit

protocol AppCoreCoordinatorProtocol {
    func initialViewController(in window: UIWindow)
}

final class AppCoreCoordinator {
    var actualVC = UIViewController()
}


extension AppCoreCoordinator: AppCoreCoordinatorProtocol {
    internal func initialViewController(in window: UIWindow) {
        self.actualVC = StartScreenCoordinator.viewController()
        window.rootViewController = self.actualVC
        window.makeKeyAndVisible()
    }
}
