//
//  PrimeraViewController.swift
//  AppNavigationData
//
//  Created by Ignacio Gilabert Bernal on 18/9/21.
//

import UIKit

class PrimeraViewController: UIViewController {

    // MARK - Variables
    var datosUsuario = DatosUsuarioModel()
    
    // MARK - IBOutlets
    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var apellidoTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navegacion
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueV2"{
            // Si tiene caracter, sera true. Si por lo que sea la variable es nil, no se va a romper, "escapea" el && es un Y (Nombre Y Apellido) no este vacio
            if !(self.nombreTF.text?.isEmpty ?? false) && !(self.apellidoTF.text?.isEmpty ?? false)
            
            {
                // Crear VC (El destination del segue puede ser la SegundaViewController?)
                let ventana2VC = segue.destination as! SegundaViewController
                // DTO
                ventana2VC.datosUsuario.nombreData = self.nombreTF.text
                ventana2VC.datosUsuario.apellidoData = self.apellidoTF.text
            } else {
                self.present(Utils.shared.showAlertVC("Estimado usuario",
                                                      message: "Por favor introduce los datos necesarios para continuar"),
                             animated: true,
                             completion: nil)
            }
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

// MARK: - Logout
    @IBAction func cerrarVC(segue: UIStoryboardSegue) {
        print("sesion cerrada")
    }

}
