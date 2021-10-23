//
//  PruebaEntradaCoordinator.swift
//  EjerciciosBasicos
//
//  Created by Ignacio Gilabert Bernal on 20/10/21.
//

import Foundation
import UIKit

final class PruebaEntradaCoordinator{
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: PruebaEntradaVC())
    }
    static func viewController() -> UIViewController {
        PruebaEntradaVC()
    }
}
