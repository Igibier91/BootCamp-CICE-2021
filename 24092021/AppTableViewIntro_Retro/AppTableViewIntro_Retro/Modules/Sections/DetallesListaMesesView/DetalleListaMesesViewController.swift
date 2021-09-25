//
//  DetalleListaMesesViewController.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import UIKit

class DetalleListaMesesViewController: UIViewController {

    var mesSeleccionado: String?
    
    @IBOutlet weak var mesSeleccionadoLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mesSeleccionadoLBL.text = mesSeleccionado
        
        
        // Do any additional setup after loading the view.
    }


}
