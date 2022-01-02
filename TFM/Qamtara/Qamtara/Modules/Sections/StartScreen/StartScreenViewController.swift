//
//  StartScreenViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 15/11/21.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var subtitleLBL: UILabel!
    @IBOutlet weak var titleLBL: UILabel!
    
    // MARK: - IBActions
    @IBAction func playBTNACT(_ sender: Any) {
        navigateIntro()
    }
    
    @IBAction func tutorialBTNACT(_ sender: Any) {
        showAlertTutorial(title: "Qamtara", message: "Qamtara es un minijuego desarrollado como parte del programa de aprendizaje de la escuela CICE por Ignacio Gilabert. Dentro de este, vamos a poner en práctica conceptos de Swift con UIKit. El juego no necesita mucha explicación, la aventura te irá guiando a través de la imponente tierra de Qamtara. Espero que lo disfrutes casi tanto como yo haciéndolo. Muchas gracias por tu tiempo y dedicación. ")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTexts()
        
        
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
        titleLBL.text = "Qamtara"
        subtitleLBL.text = "Un RPG para mis compañeros de CICE"
    }
    
    // mostrar un tutorial como una alerta
    func showAlertTutorial(title: String, message: String) {
        let alertGuide = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let guideOK = UIAlertAction(title: "¡Entendido!", style: .default) { UIAlertAction in
            
        }
        alertGuide.addAction(guideOK)
        present(alertGuide, animated: true, completion: nil)
    
    }
    
    func navigateIntro(){
        let mainVC = IntroViewController()
        present(mainVC, animated: true, completion: nil)
    }
    
    
}
