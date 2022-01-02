//
//  IntroCoordinator.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 2/1/22.
//

import Foundation
import UIKit

final class IntroCoordinator {
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: IntroViewController())
    }
    
    static func viewController() -> UIViewController {
        IntroViewController()
    }

}
