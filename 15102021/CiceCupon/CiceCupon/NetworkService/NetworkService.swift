//
//  NetworkService.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import Foundation

protocol NetworkServiceProtocol{
    func requestGeneric<M: Decodable>(requestObject: RequestDTO, entityClass: M.Type, completionHandler: @escaping(M?) -> (), failure: @escaping(NetworkError) -> ())
}

final class NetworkService: NetworkServiceProtocol {
    func requestGeneric<M>(requestObject: RequestDTO, entityClass: M.Type, completionHandler: @escaping(M?) -> (), failure: @escaping(NetworkError) -> ()) where M : Decodable {
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
   
        let baseURL = URLEndpoint.baseURL
        let endpoint = "\(baseURL)\(requestObject.endpoint)"
        let urlEndpoint = URL(string: endpoint)!
        
        // Tarea Asíncrona, weak self, siga trabajando asincronamente
        session.dataTask(with: urlEndpoint) { [weak self] data , response, error in guard self != nil else { return }
            if let errorDes = error {
                failure(NetworkError(error: errorDes))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                failure(NetworkError(status: .badServerResponse))
                return
            }
            
            guard let dataDes = data else {
                failure(NetworkError(status: .noContent))
                return
            }
        
            do {
                let jsonObject = try JSONDecoder().decode(entityClass.self, from: dataDes)
                completionHandler(jsonObject)
            } catch {
                failure(NetworkError(status: .resourceUnavailable))
            }
        
        
        }
        .resume()
        session .finishTasksAndInvalidate()
    }
    
    
}


