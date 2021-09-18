//
//  SegundaViewController.swift
//  AppNavigationData
//
//  Created by Ignacio Gilabert Bernal on 18/9/21.
//

import UIKit

class SegundaViewController: UIViewController {
    // MARK: - Variables
    var datosUsuario = DatosUsuarioModel()
    var edadDelPerro: Int?
    var nuevaEdadDelPerro: Int?
    
    // MARK: - IBOutlets
    @IBOutlet weak var nombreLBL: UILabel!
    @IBOutlet weak var apellidoLBL: UILabel!
    @IBOutlet weak var telefonoTF: UITextField!
    @IBOutlet weak var direccionTF: UITextField!
    @IBOutlet weak var calculaEdadPerroTF: UITextField!
    
    // MARK: - IBActions
    @IBAction func calculoEdadPerroACTION(_ sender: Any) {
        self.edadDelPerro = Int(self.calculaEdadPerroTF.text!)
        if let edadPerroDes = self.edadDelPerro {
            self.nuevaEdadDelPerro = edadPerroDes * 7
            self.present(Utils.shared.showAlertVC("Edad de mi Perro", message: "El calculo de la edad de mi perro es: \(self.nuevaEdadDelPerro ?? 0)"), animated: true, completion: nil)
        } else {
            self.present(Utils.shared.showAlertVC("Estimado usuario", message: "Por favor introduce la edad de tu perro para calcular"), animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configuredUI()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - Metodos privados
    private func configuredUI() {
        // Si llega a ser nulo me pone vacío (Espacio en blanco) ""
        self.nombreLBL.text = "Mi nombre es: \(datosUsuario.nombreData ?? "")"
        self.apellidoLBL.text = "Mi apellido es: \(datosUsuario.apellidoData ?? "")"
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Lo que compruebna es que si alguno es vacío le envía una alerta al usuario
        if segue.identifier == "segueV3"{
            if (self.telefonoTF.text?.isEmpty) ?? true && (self.direccionTF.text?.isEmpty) ?? true && (self.calculaEdadPerroTF.text?.isEmpty) ?? true{
                self.present(Utils.shared.showAlertVC("Hey", message: "Por favor introduce datos en los campos de texto"), animated: true, completion: nil)
            } else {
                //
                let ventana3VC = segue.destination as! TerceraViewController
                ventana3VC.datosUsuario.telefonoData = self.telefonoTF.text
                ventana3VC.datosUsuario.nombreData = self.nombreLBL.text
                ventana3VC.datosUsuario.apellidoData = self.apellidoLBL.text
                ventana3VC.datosUsuario.direccionData = self.direccionTF.text
                ventana3VC.datosUsuario.edadDelPerroData = "\(self.nuevaEdadDelPerro ?? 0)"
            }
    }
   
    }
    
}
