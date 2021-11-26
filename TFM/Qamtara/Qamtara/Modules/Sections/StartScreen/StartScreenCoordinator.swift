//
//  StartScreenCoordinator.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 15/11/21.
//

import Foundation
import UIKit

final class StartScreenCoordinator {
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: StartScreenViewController())
    }
    
    static func viewController() -> UIViewController {
        StartScreenViewController()
    }

}
