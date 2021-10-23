//
//  SplashPresenter.swift
//  CiceCupon
//
//  Created by Andres Felipe Ocampo Eljaiek on 15/10/21.
//

import Foundation

// entrada de las funciones que solicita el View Controller
protocol SplashPresenterInputProtocol {
    func fetchData()
    func getInformationObject() -> ResultiTunes?
}

// Entrada de las funciones que vienen desde la salida del Interactor -> InteractorOutput
protocol SplashInteractorOutputProtocol {
    func fetchDataOutputInteractor(data: ItunesServerModel?)
}

final class SplashPresenter: BasePresenter<SplashViewControllerProtocol, SplashInteractorInputProtocol, SplashRouterInputProtocol> {
    
    var arrayResultados: [ResultiTunes] = []
}

// extension que aplica la ejecución del metodos que entran desde el View Controller
extension SplashPresenter: SplashPresenterInputProtocol {

    func fetchData() {
        self.interactor?.fetchDataMusic()
    }
    
    func getInformationObject() -> ResultiTunes? {
        self.arrayResultados[0]
    }
    
    func navigateLoginView(data: [ResultiTunes]) {
        self.router?.navigateToLoginView(with: data)
    }

}


// extension que aplica la ejecucion del metodo que entran desde el Interactor
extension SplashPresenter: SplashInteractorOutputProtocol {
    
    func fetchDataOutputInteractor(data: ItunesServerModel?) {
        self.arrayResultados.removeAll()
        self.arrayResultados = data?.feed?.results ?? []
        self.navigateLoginView(data: self.arrayResultados)
    }
    
}
