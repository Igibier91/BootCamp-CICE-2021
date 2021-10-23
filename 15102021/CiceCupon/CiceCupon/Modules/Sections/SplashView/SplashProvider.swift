//
//  SplashProvider.swift
//  CiceCupon
//
//  Created by Andres Felipe Ocampo Eljaiek on 15/10/21.
//

import Foundation

protocol SplashProviderProtocol {
    func fetchData(completionHandler: @escaping (Result<ItunesServerModel, NetworkError>) -> ())
}

final class SplashProvider: SplashProviderProtocol {
    
    let networkService: NetworkServiceProtocol = NetworkService()
    
    func fetchData(completionHandler: @escaping (Result<ItunesServerModel, NetworkError>) -> ()) {
        
        self.networkService.requestGeneric(requestObject: SplashProviderRequest.requestData(data: "\(10)"),
                                           entityClass: ItunesServerModel.self) { [weak self] resultData in
            guard self != nil else { return }
            guard let ItunesServerModelDes = resultData else { return }
            completionHandler(.success(ItunesServerModelDes))
        } failure: { [weak self] networkError in
            guard self != nil else { return }
            completionHandler(.failure(networkError))
        }
    }
}

struct SplashProviderRequest {
    
    static func requestData(data numeroItems: String) -> RequestDTO {
        let arguments: [CVarArg] = [numeroItems]
        let urlComplete = String(format: URLEnpoint.music, arguments: arguments)
        let request = RequestDTO(params: nil, method: .get, endpoint: urlComplete)
        return request
    }
}

