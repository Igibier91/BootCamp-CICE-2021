//
//  SegundaViewController.swift
//  AppDataPicker_PickerView
//
//  Created by Ignacio Gilabert Bernal on 17/9/21.
//

import UIKit

class SegundaViewController: UIViewController {

    //MARK: - Variables
    var localidadesArrayData = ["Salamanca", "la Fatina", "Muelcarral", "Gentas"]
    var codigoPostalArrayData = ["28001", "28010", "28034", "28000"]
    var prioridadTeletrabajoArrayData = ["Alta", "Media", "Baja"]
    var fotosPerfilArrayData = ["felipe.jpg", "maria.jpg", "felipe.jpg"]
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var localidadesTF: UITextField!
    @IBOutlet weak var codigoPostalTF: UITextField!
    @IBOutlet weak var prioridadTeletrabajoTF: UITextField!
    @IBOutlet weak var fotoPerfilTF: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Utils.configPickerView(tag: 1,
                              textField: localidadesTF,
                              arrayData: localidadesArrayData,
                              delegate: self,
                              datasource: self)
        Utils.configPickerView(tag: 2,
                              textField: codigoPostalTF,
                              arrayData: codigoPostalArrayData,
                              delegate: self,
                              datasource: self)
        Utils.configPickerView(tag: 3,
                              textField: prioridadTeletrabajoTF,
                              arrayData: prioridadTeletrabajoArrayData,
                              delegate: self,
                              datasource: self)

    }
    

   // private func configPickerView(tag: Int, textField custom: UITextField, arrayData data: [String]){
     //let pickerView = UIPickerView()
       // pickerView.delegate = self
        //pickerView.dataSource = self
       // pickerView.tag = tag
        //custom.inputView = pickerView
        //custom.text = data[0]
  //  }
    
    //Capturra todos los toques,
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

extension SegundaViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return localidadesArrayData.count
            
        case 2:
            return codigoPostalArrayData.count
            
        default:
            return prioridadTeletrabajoArrayData.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return localidadesArrayData[row]
        case 2:
            return codigoPostalArrayData[row]
        default:
            return prioridadTeletrabajoArrayData[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            self.localidadesTF.text = localidadesArrayData[row]
        case 2:
            self.codigoPostalTF.text = codigoPostalArrayData[row]
        default:
            self.fotoPerfilTF.image = UIImage(named: fotosPerfilArrayData[row])
            
        }
    }
        
    }
