//
//  SplashPresenter.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import Foundation
protocol SplashPresenterInputProtocol{
    func fetchData()
    func getInformationObject() -> ResultMusic?
}

protocol SplashInteractorOutputProtocol{
    func fetchDataOutputInteractor(data: MusicServerModel?)
}

final class SplashPresenter: BasePresenter<SplashViewControllerProtocol, SplashInteractorInputProtocol, SplashRouterInputProtocol> {
    
    var arrayResultados: [ResultMusic] = []
}

extension SplashPresenter: SplashPresenterInputProtocol {
    func fetchData() {
        self.interactor?.fetchDataMusic()
    }
    
    func getInformationObject() -> ResultMusic?{
        self.arrayResultados[0]
    }
    
    func navigateLoginView(data: [ResultMusic]){
        self.router?.navigateToLoginView(with: data)
        
    }
    
}

extension SplashPresenter: SplashInteractorOutputProtocol{
    
    func fetchDataOutputInteractor(data: MusicServerModel?){
        self.arrayResultados.removeAll()
        self.arrayResultados = data?.feed?.results ?? []
        self.navigateLoginView(data: self.arrayResultados)
    }
}
