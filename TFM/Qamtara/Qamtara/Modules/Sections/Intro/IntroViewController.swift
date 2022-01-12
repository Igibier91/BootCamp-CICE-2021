//
//  IntroViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 2/1/22.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet var introTextLBL: UILabel!
    
    
    @IBAction func heroNameTF(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTexts()
        heroName()
        
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

    // MARK: - Functions
    func setTexts() {
        introTextLBL.text = "¿Hola? ¿¡Hola!? ¿Qué haces ahí tirado en medio del bosque? Pensaba que eras el elegido para salvar a Qamtara de la tiranía de Loz Orkolokoz, y mírate, no te puedes ni mover. ¿Podrías al menos ESCRIBIR tu nombre?"
    }
    
    func heroName() {
        
    }
    
    func navigateTrial(){
        
    }

    }

