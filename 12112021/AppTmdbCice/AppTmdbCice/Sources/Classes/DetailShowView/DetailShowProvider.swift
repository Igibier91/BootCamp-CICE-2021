//
//  Created on 20/11/21.
// DetailShow.swift - Very brief description
//


import Foundation
import Combine

// Mark: - Input Provider
protocol DetailShowProviderInputProtocol: BaseProviderInputProtocol {
    func fetchDataDetailShowModelProvider()
}

final class DetailShowProvider: BaseProvider {

    // MARK: - VIP Dependences
    weak var interactor: DetailShowProviderOutputProtocol? {
        super.baseInteractor as? DetailShowProviderOutputProtocol
    }
    
    let networkService: NetworkServiceProtocol = NetworkService()
    var cancellable: Set<AnyCancellable> = []
    
    var showObject: MoviesShowsModel?
    let supportParameters = "videos,credits"
    
}

// Mark: - extension -> Input Provider
extension DetailShowProvider: DetailShowProviderInputProtocol {
    func fetchDataDetailShowModelProvider() {
        let movieId = "\(showObject?.id ?? 0)"
        let parameters: [CVarArg] = [movieId]
        let finalEndpoint = String(format: URLEndpoint.endpointDetailMovie, arguments: parameters)
        let request = RequestDTO(params: nil,
                                 arrayParams: nil,
                                 method: .get,
                                 urlContext: .webService,
                                 endpoint: finalEndpoint)
        
        self.networkService.requestGeneric(request: request,
                                           entityClass: DetailShowModel.self)
            .sink { completion in
                switch completion{
                case .finished: break
                case .failure(let error):
                 debugPrint(error)
                    //   self.interactor?.setInfoMovieRecommended(completionData: .failure(error))
                }
            } receiveValue: { resultData in
              //  self.interactor?.setInfoMovieRecommended(completionData: .success(resultData.results))
            }
            .store(in: &cancellable)
    }
    
    
}


