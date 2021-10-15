//
//  SplashViewController.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import UIKit

protocol SplashViewControllerProtocol{
    
}

class SplashViewController: BaseView<SplashPresenterInputProtocol> {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.fetchData()
        // Do any additional setup after loading the view.
    }


}

extension SplashViewController: SplashViewControllerProtocol{
    
}
