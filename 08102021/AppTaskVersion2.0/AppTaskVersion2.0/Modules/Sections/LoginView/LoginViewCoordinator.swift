//
//  LoginViewCoordinator.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import Foundation
import UIKit


// Coordinador -> Ensambla las piezas
final class LoginViewCoordinator{
    // Retornamos un NavigationController (Embeber un NavigationController)
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: viewController())
    }
    
    // Devuelve la primera view, este controlador que ponga es el que va a cargar arriba
    static func viewController() -> UIViewController {
        LoginViewController()
    }
    
}
