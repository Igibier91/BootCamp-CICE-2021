//
//  TrialCoordinator.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 18/1/22.
//

import Foundation
import UIKit

final class TrialCoordinator {
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: TrialViewController())
    }
    
    static func viewController() -> UIViewController {
        TrialViewController()
    }

}
