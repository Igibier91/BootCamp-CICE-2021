//
//  CategoriaCoordinator.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 9/10/21.
//

import Foundation
import UIKit


// Coordinador -> Ensambla las piezas
final class CategoriaCoordinator{
    // Devuelve la primera view, este controlador que ponga es el que va a cargar arriba
    static func viewController() -> UIViewController {
        CategoriaViewController()
    }
    
}
