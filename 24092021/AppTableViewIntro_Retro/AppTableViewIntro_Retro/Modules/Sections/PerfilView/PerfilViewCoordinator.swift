//
//  PerfilViewCoordinator.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import Foundation
import UIKit

final class PerfilViewCoordinator {

        static func navigation() -> UINavigationController {
            UINavigationController.init(rootViewController: viewController())
        }
        static func viewController() -> UIViewController {
            PerfilViewController()
        }
}



