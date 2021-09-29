//
//  ViewController.swift
//  TrucoMagia_Reto
//
//  Created by Ignacio Gilabert Bernal on 28/9/21.
//

import UIKit

class SaludosVC: UIViewController {

    
    //MARK: - IBOutlets
    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var apellidoTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Navegacion
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueTruco"{
            if !(self.nombreTF.text?.isEmpty ?? false) && !(self.apellidoTF.text?.isEmpty ?? false)
            
            {
                // Crear VC (El destination del segue puede ser la SegundaViewController?)
                let ventana2VC = segue.destination as! TrucoVC
                // DTO
                ventana2VC.datosUsuario.nombreData = self.nombreTF.text
                ventana2VC.datosUsuario.apellidoData = self.apellidoTF.text
            } else {
                self.present(Utils.shared.showAlertVC("Estimado amigo",
                                                      message: "Por favor, obedezca al Gran Mago."),
                             animated: true,
                             completion: nil)
            }
            
            
        }
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

