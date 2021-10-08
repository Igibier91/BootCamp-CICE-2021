//
//  LoginViewController.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Variables
    var usuarioLogado = false
    
    
    // MARK: - IBOutlet
    @IBOutlet weak var usuarioTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - IBActions
    @IBAction func loginACTION(_ sender: Any) {
        if datosCompletos() {
            // cambiamos el usuarioLogado a True para que no aparezca el login
            self.usuarioLogado = true
            
            Utils.Constantes().kPreferences.set(self.usuarioTF.text, forKey: Utils.Constantes().kUsuario)
            Utils.Constantes().kPreferences.set(self.passwordTF.text, forKey: Utils.Constantes().kPassword)
            Utils.Constantes().kPreferences.set(self.usuarioLogado, forKey: Utils.Constantes().kUsuarioLogado)
            
            self.borrarDatosVista()
            

        } else {
            // Utils. funciona por la clase estatica
            self.present(Utils.muestraAlerta(titulo: "Hey!", mensaje: "Rellena todos los campos"), animated: true, completion: nil)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Metodos privados
    //Comprobar si los datos estan cumplimentados
    private func datosCompletos() -> Bool {
        // Comprobar si no es vacío y si es nulo no hagas nada tampoco
        return !(self.usuarioTF.text?.isEmpty ?? false) && !(self.passwordTF.text?.isEmpty ?? false)
        

        }
    // Para borrar los datos
    private func borrarDatosVista(){
        self.usuarioTF.text = ""
        self.passwordTF.text = ""
        self.navegaZonaPrivada()
    }
    private func navegaZonaPrivada(){
        // Hay que crear la vista de la zona privada (Aqui seguimos mas tarde cuando creemos lo que faltE)
        let vc = HomeTabBarViewCoordinator.viewController()
        vc.modalTransitionStyle = .coverVertical
        // Para machacar la primera vista y no se vea el loguin
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }

}
