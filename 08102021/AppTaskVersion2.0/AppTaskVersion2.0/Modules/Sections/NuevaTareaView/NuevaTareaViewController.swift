//
//  NuevaTareaViewController.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import UIKit

class NuevaTareaViewController: UIViewController {

    //MARK: - Variables
    let arrayPrioridad = ["ALTA", "MEDIA-ALTA", "MEDIA", "MEDIA-BAJA", "BAJA"]
    let nombreCategoria = "Sin Categoria"
    var fotoSeleccionada = false
    
    //MARK: - IBOutlets
    @IBOutlet weak var nuevaTareaTF: UITextField!
    @IBOutlet weak var prioridadTF: UITextField!
    @IBOutlet weak var categoriaLBL: UILabel!
    @IBOutlet weak var fechaTF: UITextField!
    @IBOutlet weak var descripcionTextV: UITextView!
    
    @IBOutlet weak var imagenTareaImage: UIImageView!
    
    @IBAction func muestraCamaraACTION(_ sender: Any) {
    }
    @IBAction func muestraListaCatACTION(_ sender: Any) {
    }
    @IBAction func salvarTareaACTION(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

//MARK: - Metodos privados
    
    
}
