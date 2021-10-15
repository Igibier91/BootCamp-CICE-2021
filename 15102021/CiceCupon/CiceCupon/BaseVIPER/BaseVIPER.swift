//
//  BaseVIPER.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import Foundation
import UIKit
//MARK: - Viper 1
// Clases de nuestro patrón, definir.

// Presenter
class BaseView<P>: UIViewController{
var presenter: P?
}

// Definir la vista, interactor y router
class BasePresenter<V,I, R> {
    var vc: V?
    var interactor: I?
    var router: R?
    
    
    // Inicializador de conviniencia
    convenience init(vc: V, interactor: I? = nil, router: R? = nil){
    self.init()
    self.vc = vc
    self.interactor = interactor
    self.router = router
}
}



class BaseInteractor<P> {
    var presenter: P?
    convenience init(presenter: P){
        self.init()
        self.presenter = presenter
    }
}

class BaseRouter<V> {
    var view: V?
    
    convenience init(view: V? = nil) {
        self.init()
        self.view = view
    }

}

class BaseNavigation: UINavigationController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
