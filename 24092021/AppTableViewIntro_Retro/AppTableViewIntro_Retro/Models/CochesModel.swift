//
//  CochesModel.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import Foundation
import UIKit

// NSObject objecto padre de todo

class _CochesModel: NSObject {
    // declarar las variables de nuestro modelo
    var nombre: String?
    var color: String?
    var imagen: UIImage?
    
    // iniciamos el constructor, colocamos p de parametro
    init(nombre: String, color: String, imagen: UIImage) {
        self.nombre = nombre
        self.color = color
        self.imagen = imagen
        super.init()
        
    }
}



// Estructura -> No hace falta inicializar
struct CochesModel {
    var nombre: String?
    var color: String?
    var imagen: UIImage?
}
