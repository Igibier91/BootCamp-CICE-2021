//
//  ViewController.swift
//  AppHolaMundo
//
//  Created by Ignacio Gilabert Bernal on 10/9/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var holaMundoLBL: UILabel!
    @IBOutlet weak var saludoEspecialLBL: UILabel!
    @IBOutlet weak var saludaATodosBTN: UIButton!
    @IBOutlet weak var constAlturaButon: NSLayoutConstraint!
    
    
    // MARK: -IBActions
    @IBAction func saludoATodosACTION(_ sender: Any) {
        self.holaMundoLBL.text = "Hola al Bootcam de iOS en CICE"
        self.saludoEspecialLBL.text = "Adios a todos y nos vamos a un descanso"
        self.saludaATodosBTN.setTitle("Aquí de nuevo", for: .normal)
        self.constAlturaButon.constant = 67.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Aqui estamos currando a tope")
    
        
    }


}

