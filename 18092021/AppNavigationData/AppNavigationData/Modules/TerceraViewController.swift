//
//  TerceraViewController.swift
//  AppNavigationData
//
//  Created by Ignacio Gilabert Bernal on 18/9/21.
//

import UIKit

class TerceraViewController: UIViewController {
    // MARK: - Variables
    var datosUsuario = DatosUsuarioModel()
    let codigoPostalArrayData = ["28001", "28002", "28003", "28004"]
    let ciudadArrayData = ["Madrid", "Sevilla", "Valencia", "Barcelona"]
    let posicionGeograficaArrayData = ["40.412 / -3.25412", "132.4563 / -35.1231", "140.4567 / -34.1231", "-34.1231 / -10.1231"]
    
    // MARK: - IBOutlets
    @IBOutlet weak var nombreLBL: UILabel!
    @IBOutlet weak var apellidoLBL: UILabel!
    @IBOutlet weak var telefonoLBL: UILabel!
    @IBOutlet weak var direccionLBL: UILabel!
    @IBOutlet weak var edadPerroLBL: UILabel!
    @IBOutlet weak var codigoPostalTF: UITextField!
    @IBOutlet weak var ciudadTF: UITextField!
    @IBOutlet weak var posicionGeograficaTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuredUI()
        self.configuredPickerView()
    }

    // MARK: - Metodos privados
    private func configuredUI(){
        self.nombreLBL.text = datosUsuario.nombreData
        self.apellidoLBL.text = datosUsuario.apellidoData
        self.telefonoLBL.text = datosUsuario.telefonoData
        self.direccionLBL.text = datosUsuario.direccionData
        self.edadPerroLBL.text = datosUsuario.edadDelPerroData
    }

    private func configuredPickerView(){
        Utils.shared.showPicker(0, textField: self.codigoPostalTF, arrayData: self.codigoPostalArrayData, delegate: self, datasource: self)
        Utils.shared.showPicker(1, textField: self.ciudadTF, arrayData: self.ciudadArrayData, delegate: self, datasource: self)
        Utils.shared.showPicker(2, textField: self.posicionGeograficaTF, arrayData: self.posicionGeograficaArrayData, delegate: self, datasource: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueV4"{
            
        }
    }
    
    
    
    
    
    
    
}

extension TerceraViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 0:
            return codigoPostalArrayData.count
        case 1:
            return ciudadArrayData.count
        default:
            return posicionGeograficaArrayData.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 0:
            return codigoPostalArrayData[row]
        case 1:
            return ciudadArrayData[row]
        default:
            return posicionGeograficaArrayData[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 0:
            self.codigoPostalTF.text = codigoPostalArrayData[row]
        case 1:
            self.ciudadTF.text = ciudadArrayData[row]
        default:
            self.posicionGeograficaTF.text = posicionGeograficaArrayData[row]
        }
    }

}
