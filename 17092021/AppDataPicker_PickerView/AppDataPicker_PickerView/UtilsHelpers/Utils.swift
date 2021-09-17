//
//  Utils.swift
//  AppDataPicker_PickerView
//
//  Created by Ignacio Gilabert Bernal on 17/9/21.
//

import Foundation
import UIKit

class Utils{
    //static -> Observable
   // static let shared = Utils()
    
    
    
    static func configPickerView(tag: Int,
                                  textField custom: UITextField,
                                  arrayData data: [String],
                                  delegate customDelegate: UIPickerViewDelegate,
                                  datasource customDatasource: UIPickerViewDataSource){
        let pickerView = UIPickerView()
        pickerView.delegate = customDelegate
        pickerView.dataSource = customDatasource
        pickerView.tag = tag
        custom.inputView = pickerView
        custom.text = data[0]
    }
}


