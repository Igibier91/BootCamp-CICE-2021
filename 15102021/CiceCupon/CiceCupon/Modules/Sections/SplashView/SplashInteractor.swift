//
//  SplashInteractor.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import Foundation

protocol SplashInteractorInputProtocol{
    func fetchDataMusic()
}

final class SplashInteractor: BaseInteractor<SplashInteractorOutputProtocol>{
    let provider: SplashProviderProtocol = SplashProvider()
    
}

extension SplashInteractor: SplashInteractorInputProtocol{
    func fetchDataMusic() {
        self.provider.fetchData { data in
            switch data {
            case .success(let response): break
               // self.presenter?.fetchDataOutputInteractor(data: response)
            case .failure(let error):
                debugPrint(error)
            }
        } failure: { NetworkError in
            debugPrint(NetworkError.localizedDescription)
        }
        
    }
}
