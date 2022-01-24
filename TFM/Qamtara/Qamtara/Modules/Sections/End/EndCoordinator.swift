//
//  EndCoordinator.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 24/1/22.
//

import Foundation
import UIKit

final class EndCoordinator {
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: EndViewController())
    }
    
    static func viewController() -> UIViewController {
        EndViewController()
    }

}
