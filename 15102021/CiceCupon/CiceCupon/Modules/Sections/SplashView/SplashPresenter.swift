//
//  SplashPresenter.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import Foundation
protocol SplashPresenterInputProtocol{
    func fetchData()
}

protocol SplashInteractorOutputProtocol{
    
}

final class SplashPresenter: BasePresenter<SplashViewControllerProtocol, SplashInteractorInputProtocol, SplashRouterInputProtocol> {
    
}

extension SplashPresenter: SplashPresenterInputProtocol {
    func fetchData() {
        self.interactor?.fetchDataMusic()
    }
    
    
}

extension SplashPresenter: SplashInteractorOutputProtocol{
    
}
