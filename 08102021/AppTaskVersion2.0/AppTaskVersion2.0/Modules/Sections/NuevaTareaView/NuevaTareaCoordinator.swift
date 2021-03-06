//
//  NuevaTareaCoordinator.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import Foundation
import UIKit


// Coordinador -> Ensambla las piezas
final class NuevaTareaCoordinator{
    // Retornamos un NavigationController (Embeber un NavigationController)
    static func navigation() -> UINavigationController {
        let navVC = UINavigationController(rootViewController: viewController())
        navVC.navigationBar.setNavigationBarAppearance(backgrounddColor: UIColor.red)
        return navVC
    }
    
    // Devuelve la primera view, este controlador que ponga es el que va a cargar arriba
    static func viewController() -> UIViewController {
        NuevaTareaViewController()
    }
    
}
