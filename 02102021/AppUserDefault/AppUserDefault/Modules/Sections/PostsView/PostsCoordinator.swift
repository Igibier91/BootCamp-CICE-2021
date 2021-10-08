//
//  PostsCoordinator.swift
//  AppUserDefault
//
//  Created by Ignacio Gilabert Bernal on 2/10/21.
//

import Foundation
import UIKit

final class PostsCoordinator{
    static func navigation() -> UINavigationController{
        //  UINavigationController *nav = [[UINavigationController alloc] init]
          UINavigationController(rootViewController: viewController())
    }
    static func viewController() -> UIViewController {
        UserDataViewController()
    }
}
