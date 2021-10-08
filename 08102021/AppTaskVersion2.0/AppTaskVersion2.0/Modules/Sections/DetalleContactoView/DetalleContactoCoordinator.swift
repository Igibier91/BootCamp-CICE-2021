//
//  DetalleContactoCoordinator.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import Foundation
import UIKit


// Coordinador -> Ensambla las piezas
final class DetalleContactoCoordinator{
//NO NECESITAMOS NAVEGADOR, PORQUE LO TRAE DE LA ANTERIOR VISTA
    
    // objeto dvo
    static func viewController(dvo: ArrayContact? = nil) -> UIViewController {
        let vc = DetalleContactoViewController()
        vc.dataDetail = dvo
        return vc
    }
    
}
