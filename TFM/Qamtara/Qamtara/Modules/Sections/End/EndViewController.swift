//
//  EndViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 24/1/22.
//

import UIKit

class EndViewController: UIViewController {

    // MARK: - Variables
    var heroNameChosen: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // forzar landscape orientation
        let value = UIInterfaceOrientation.landscapeRight.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        }
        override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            return .landscapeRight
        }
        override var shouldAutorotate: Bool {
            return true
        }
    




}
