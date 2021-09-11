//
//  ViewController.swift
//  AppAlertas
//
//  Created by Ignacio Gilabert Bernal on 11/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - Variables locales
    var loginTextField: UITextField?
    var passwordTextField: UITextField?
    
    // MARK: - IBActions
    @IBAction func showAlertController(_ sender: AnyObject) {
        
        switch sender.tag {
        case 0:
            // Alert Simple
            let alertVC = UIAlertController(title: "Alert Controller Simple", message: "Controller es la presentacion por defecto", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.muestraSaludoOk()
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
                self.muestraSaludoCancel()
            }
            alertVC.addAction(okAction)
            alertVC.addAction(cancelAction)
            
            present(alertVC, animated: true, completion: nil)
            
        case 1:
            // Alert Con un TextField
            let alertVCTF = UIAlertController(title: "Alert Controller con TextField", message: "Controller es la presentacion por defecto", preferredStyle: .alert)
            // Añadir acciones
            alertVCTF.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                self.muestraSaludoOk()
                let viewController = self.storyboard?.instantiateViewController(identifier: "SegundaViewController")
                // Comprobacion si es nil con una variable temporal, si esa variable temporal (if let vc) es igual al ViewControler
                if let vc = viewController{
                    self.show(vc, sender: nil)
                }
                
            }))
            
            alertVCTF.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
                self.muestraSaludoCancel()
            }))
            
            alertVCTF.addTextField { textField in
                self.loginTextField = textField
                self.loginTextField?.placeholder = "Introduce tu usuario"
            }
            present(alertVCTF, animated: true, completion: nil)
            
        case 2:
            // Alert Con un Login
            let alertVCL = UIAlertController(title: "Alert Controller con TextField", message: "Controller es la presentacion por defecto", preferredStyle: .alert)
            // Añadir acciones
            alertVCL.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                let viewConStiry = self.storyboard?.instantiateViewController(identifier: "TerceraViewController")
                // Comprobacion si es nil con una variable temporal, si esa variable temporal (if let vc) es igual al ViewControler
                if let vc = viewConStiry{
                    self.present(vc, animated: true) {
                        self.muestraSaludoOk()
                    }
                }
                
            }))
            
            alertVCL.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
                self.muestraSaludoCancel()
            }))
            
            alertVCL.addTextField { textFieldUser in
                self.loginTextField = textFieldUser
                self.loginTextField?.placeholder = "Introduce tu usuario"
                         }
            alertVCL.addTextField { textFieldPass in
                self.passwordTextField = textFieldPass
                self.passwordTextField?.placeholder = "Introduce tu contraseña"
                self.passwordTextField?.isSecureTextEntry = self.muestraPassword()
                         }
            present(alertVCL, animated: true, completion: nil)
            
            
        case 4:
            // Action sheet
            let actionSheetVC = UIAlertController(title: "Action Sheet Controller", message: "Controller es la presentacion por defecto", preferredStyle: .actionSheet)
            actionSheetVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            actionSheetVC.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            actionSheetVC.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: nil))

            self.present(actionSheetVC, animated: true, completion: nil)
            
            
            
        default:
            break
        }
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Metodos privados
    func muestraSaludoOk(){
        print("Has pulsado el boton OK")
    }
    
    func muestraSaludoCancel(){
        print("Has pulsado el boton Cancel")
    }
    
    func muestraPassword()->Bool{
        true
    }
    
    
}

