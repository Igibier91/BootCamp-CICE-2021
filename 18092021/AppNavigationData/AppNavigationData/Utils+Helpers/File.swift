//
//  File.swift
//  AppNavigationData
//
//  Created by Ignacio Gilabert Bernal on 18/9/21.
//

import Foundation
import UIKit

class Utils {
    static let shared = Utils()
    
    /// custom showAlertVC
    /// - Parameters:
    ///   - title: title information to User
    ///   - text: message information to User
    func showAlertVC(_ title: String, message text: String) -> UIAlertController {
        let alertVC = UIAlertController(title: title, message: text, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alertVC
    }

    func showPicker(_ tag: Int,
                    textField customTextField: UITextField,
                    arrayData data: [String],
                    delegate pickerDelegate: UIPickerViewDelegate,
                    datasource pickerDatasource: UIPickerViewDataSource) {
    
    let pickerView = UIPickerView()
        pickerView.delegate = pickerDelegate
        pickerView.tag = tag
        customTextField.inputView = pickerView
        customTextField.text = data[0]
    }
}


struct DatosUsuarioModel {
    var nombreData: String?
    var apellidoData: String?
    var telefonoData: String?
    var direccionData: String?
    var edadDelPerroData: String?
    var codigoPostaData: String?
    var ciudadData: String?
    var posicionGeograficaData: String?
    }
