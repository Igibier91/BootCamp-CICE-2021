//
//  Utils+Helpers.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import Foundation
import UIKit

class Utils {
    
    struct Constantes {
        let kUsuario = "USUARIO"
        let kPassword = "PASSWORD"
        // Grabar nosotros directamente en el user default los datos
        let kPreferences = UserDefaults.standard
        // Para decir si esta logado o no y ya no mostrarte el login mas
        let kUsuarioLogado = "LOGADO"
        
    }
    //Mostrar alerta
    static func muestraAlerta(titulo: String, mensaje: String) -> UIAlertController {
        let alertVC = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default))
        return alertVC
    }
}

protocol ReuseIdentifierProtocol: AnyObject {
    static var defaultReuseIdentifier: String { get }
}

extension ReuseIdentifierProtocol where Self: UIView {
    static var defaultReuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

protocol ReuseIdentifierViewControllerProtocol: AnyObject {
    static var defaultReuseIdentifier: String { get }
}

extension ReuseIdentifierViewControllerProtocol where Self: UIViewController {
    static var defaultReuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension UINavigationBar{
    
    func setNavigationBarAppearance(backgrounddColor: UIColor = .white,
                                    titleTextAttributes: [NSAttributedString.Key: Any] =
                                    [.foregroundColor: UIColor.black,
                                     NSAttributedString.Key.font: UIFont(name: "Helvetica", size: 17)!],
                                    backIndicatorImage: UIImage = UIImage(systemName: "chevron.left") ?? UIImage(), itemTintColor: UIColor = UIColor.black ) {
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = backgrounddColor
            appearance.titleTextAttributes = titleTextAttributes
            appearance.shadowColor = .clear
            appearance.setBackIndicatorImage(backIndicatorImage, transitionMaskImage: backIndicatorImage)
            tintColor = itemTintColor
            standardAppearance = appearance
            compactAppearance = appearance
            scrollEdgeAppearance = appearance
        } else {
            
        }
        
    }
}
