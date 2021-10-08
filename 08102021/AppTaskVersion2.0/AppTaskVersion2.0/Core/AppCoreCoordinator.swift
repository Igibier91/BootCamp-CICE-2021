//
//  AppCoreCoordinator.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import Foundation
import UIKit

protocol AppCoreCoordiantorProtocol {
    // Parametro interno window, parametro externo UIWindow
    func initialViewController(in window: UIWindow)
}

final class AppCoreCoordinator {
    //Esto se tiene que incrustar en el APP delegate, así que primero empezamos con patrones SOLID, Inyeccion de dependencias (Protocoles/Interfaces)
    var actualVC = UIViewController()
}

extension AppCoreCoordinator: AppCoreCoordiantorProtocol{
    internal func initialViewController(in window: UIWindow) {
        // Si esto es true, deberia mostrarme la Home
        if Utils.Constantes().kPreferences.bool(forKey: Utils.Constantes().kUsuarioLogado) {
            self.actualVC = HomeTabBarViewCoordinator.viewController() } else {
                self.actualVC = LoginViewCoordinator.viewController()
        }
    // Lo comentamos al cambiar lo del login
       // self.actualVC = LoginViewCoordinator.viewController()
        window.rootViewController = self.actualVC
        window.makeKeyAndVisible()
    }
    
}
