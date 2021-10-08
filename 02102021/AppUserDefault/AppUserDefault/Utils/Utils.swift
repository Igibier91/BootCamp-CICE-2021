//
//  Utils.swift
//  AppUserDefault
//
//  Created by Ignacio Gilabert Bernal on 2/10/21.
//

import Foundation
import UIKit

class Utils{
    
    struct Constantes{
        let kNombre = "NOMBRE"
        let kApellido = "APELLIDO"
        let kDireccion = "DIRECCIÓN"
        let kTelefono = "TELÉFONO"
        let kFechaActualización = "FECHA_ACTUALIZACIÓN"
        let kImage = "IMAGE_PERFIL"
        let kPrefs = UserDefaults.standard
    }

    func muestraAlerta(titulo: String, mensaje: String, completionHandler: ((UIAlertAction) -> Void)?) -> UIAlertController{
        let alertVC = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: completionHandler))
        return alertVC
    }
    

}
