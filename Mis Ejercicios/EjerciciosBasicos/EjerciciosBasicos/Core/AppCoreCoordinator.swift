//
//  AppCoreCoordinator.swift
//  EjerciciosBasicos
//
//  Created by Ignacio Gilabert Bernal on 20/10/21.
//

import Foundation
import UIKit

protocol AppCoreCoordinatorProtocol {
    func initialViewController(in window: UIWindow)
}

final class AppCoreCoordinator {
    var actualVC = UIViewController()
}

extension AppCoreCoordinator: AppCoreCoordinatorProtocol{
    internal func initialViewController(in window: UIWindow) {
        self.actualVC = PruebaEntradaCoordinator.viewController()
        window.rootViewController = self.actualVC
        window.makeKeyAndVisible()
    }
    
    
}
