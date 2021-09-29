//
//  TrucoVC.swift
//  TrucoMagia_Reto
//
//  Created by Ignacio Gilabert Bernal on 29/9/21.
//

import UIKit

class TrucoVC: UIViewController {

    // MARK: - Variables
    var datosUsuario = DatosUsuarioModel()
    
    // MARK: - IBOutlets
    @IBOutlet weak var nombreLBL: UILabel!
    @IBOutlet weak var apellidoLBL: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuredUI()
        // Do any additional setup after loading the view.
    }
    

    private func configuredUI() {
        // Si llega a ser nulo me pone vacío (Espacio en blanco) ""
        self.nombreLBL.text = "\(datosUsuario.nombreData ?? "")"
        self.apellidoLBL.text = "\(datosUsuario.apellidoData ?? "")"
    }
}
