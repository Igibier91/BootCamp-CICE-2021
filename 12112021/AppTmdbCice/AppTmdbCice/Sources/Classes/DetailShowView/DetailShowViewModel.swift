//
//  Created on 20/11/21.
// DetailShow.swift - Very brief description
//


import Foundation

// Mark: - Output -> Interactor
protocol DetailShowInteractorOutputProtocol: BaseInteractorOutputProtocol {
    
}

final class DetailShowViewModel: BaseViewModel, ObservableObject {

    // MARK: VIP Dependencies
    var interactor: DetailShowInteractorInputProtocol? {
        super.baseInteractor as? DetailShowInteractorInputProtocol
    }
    
    func fetchDataDetailShowModel(){
        self.interactor?.fetchDataDetailShowModelInteractor()
    }
}

// Mark: - extension Output ->  Interactor
extension DetailShowViewModel: DetailShowInteractorOutputProtocol {

}
