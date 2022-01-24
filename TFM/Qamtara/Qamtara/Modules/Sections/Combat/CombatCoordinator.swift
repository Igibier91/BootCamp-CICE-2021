//
//  CombatCoordinator.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 24/1/22.
//

import Foundation
import UIKit

final class CombatCoordinator {
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: CombatViewController())
    }
    
    static func viewController() -> UIViewController {
        CombatViewController()
    }

}
