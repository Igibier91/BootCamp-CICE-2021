//
//  Created on 20/11/21.
// DetailShow.swift - Very brief description
//

import Foundation

// Mark: - Input Interactor
protocol DetailShowInteractorInputProtocol: BaseInteractorInputProtocol {
    func fetchDataDetailShowModelInteractor()
}

// Mark: - Output -> Provider
protocol DetailShowProviderOutputProtocol: BaseProviderOutputProtocol {
    
}

final class DetailShowInteractor: BaseInteractor {

    // MARK: VIP Dependencies
    weak var viewModel: DetailShowInteractorOutputProtocol? {
        super.baseViewModel as? DetailShowInteractorOutputProtocol
    }
    var provider: DetailShowProviderInputProtocol? {
        super.baseProvider as? DetailShowProviderInputProtocol
    }

}

// Mark: - extension -> Input Interactor
extension DetailShowInteractor: DetailShowInteractorInputProtocol {
    func fetchDataDetailShowModelInteractor(){
        self.provider?.fetchDataDetailShowModelProvider()
    }

}

// Mark: - extension Output -> Provider
extension DetailShowInteractor: DetailShowProviderOutputProtocol{
    
}
