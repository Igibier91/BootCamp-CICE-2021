//
//  SplashRouter.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import Foundation

protocol SplashRouterInputProtocol{
    func navigateToLoginView(with data: [ResultMusic])
    
}

final class SplashRouter: BaseRouter<SplashViewController> {
    
}

extension SplashRouter: SplashRouterInputProtocol{
    func navigateToLoginView(with data: [ResultMusic]) {
        DispatchQueue.main.async {
            if !Utils.Constantes().kPreferences.bool(forKey: Utils.Constantes().kUsuarioLogado){
                let vc = LoginCoordinator.view()
                vc.modalTransitionStyle = .crossDissolve
                vc.modalPresentationStyle = .fullScreen
                self.view?.present(vc, animated: true, completion: nil)
            } else {
            let vc = HomeTabBarViewCoordinator.tabBarViewCoordinator()
                vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .fullScreen
            self.view?.present(vc, animated: true, completion: nil)
        }

        }


    }
    
    
}
