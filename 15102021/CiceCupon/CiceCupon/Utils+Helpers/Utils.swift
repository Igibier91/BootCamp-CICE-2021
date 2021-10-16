//
//  Utils.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 15/10/21.
//

import Foundation
import UIKit


enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
    case put = "PUT"
    case options = "OPTIONS"
}


struct RequestDTO {
    
    var params: [String: AnyObject]?
    var arrayParams: [[String: AnyObject]]?
    var method: HTTPMethods
    // URL que hace una llamada y que devuelve unos datos en concreto
    var endpoint: String
    
    init(params: [String: AnyObject]?, method: HTTPMethods, endpoint: String) {
        self.params = params
        self.method = method
        self.endpoint = endpoint
    }
    
    init(arrayParams: [[String: AnyObject]]?, method: HTTPMethods, endpoint: String) {
        self.arrayParams = arrayParams
        self.method = method
        self.endpoint = endpoint

}
}

struct URLEndpoint {
    static let baseURL = "https://rss.applemarketingtools.com/api/v2/us/"
    static let music = "music/most-played/%@/songs.json"
    static let podcast = "podcasts/top/%@/podcast-episodes.json"
static let books = "books/top-free/%@/books.json"
    static let apps = "apps/top-free/%@/apps.json"
}

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
