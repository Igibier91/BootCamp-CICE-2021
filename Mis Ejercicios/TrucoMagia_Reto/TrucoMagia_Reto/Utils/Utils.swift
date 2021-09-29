//
//  Utils.swift
//  TrucoMagia_Reto
//
//  Created by Ignacio Gilabert Bernal on 29/9/21.
//

import Foundation
import UIKit

class Utils {
    static let shared = Utils()
    
    func showAlertVC(_ title: String, message text: String) -> UIAlertController {
        let alertVC = UIAlertController(title: title, message: text, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alertVC
    
}
}

struct DatosUsuarioModel {
    var nombreData: String?
    var apellidoData: String?
    }

