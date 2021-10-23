//
//  EntryViewController.swift
//  ToDoGiberlist
//
//  Created by Ignacio Gilabert Bernal on 21/10/21.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    //MARK: - Properties
    var update: (() -> Void)?
    
    //MARK: - IBOutlets
    @IBOutlet weak var field: UITextField!
      
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        //adding the button Save by code
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        
        return true
    }
    
        @objc func saveTask() {
        guard let text = field.text, !text.isEmpty else {
            return
        }
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
             
        
        let newCount = count + 1
        
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task:\(newCount)")
        
        update?()
        
        navigationController?.popViewController(animated: true)
        
        
        
        
    }

}
