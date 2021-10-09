//
//  CategoriaViewController.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 9/10/21.
//

import UIKit

protocol CategoriaViewControllerDelegate: AnyObject{
    func nombreCategoriaSeleccionada(_ viewController: UIViewController, withIndexPath categoriaSeleccionada: String)
}

class CategoriaViewController: UIViewController {

    //MARK: Variables
    weak var delegate: CategoriaViewControllerDelegate?
    var nombreCategoriaSeleccionada = ""
    var seleccionIndexPath = IndexPath()
    let listaCategorias = ["Sin Categoría", "Tienda de Apple", "Bar con los amigos", "En la librería", "En ECI", "En Mercadona", "En casa", "En el parque", "En la peluquería", "En la barbería", "En el trabajo"]
    
    //MARK: IBOutlets
    
    @IBOutlet weak var categoriaTV: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupArrayData()
        self.configuracionTV()
    }

// MARK: Metodos Privados
    private func setupArrayData(){
        
        //bucle indice entre 0, recorro todo el array y determino index 0,1,2... si es = a categoria seleccionada, le coloco el valor del index path y le digo que corresponde al indice 0.
        for index in 0..<listaCategorias.count{
            if listaCategorias[index] == self.nombreCategoriaSeleccionada{
                self.seleccionIndexPath = IndexPath(row: index, section: 0)
        }
    }
    }
    private func configuracionTV(){
        self.categoriaTV.delegate = self
        self.categoriaTV.dataSource = self
        self.categoriaTV.register(UINib(nibName: CategoriaCell.defaultReuseIdentifier, bundle: nil), forCellReuseIdentifier: CategoriaCell.defaultReuseIdentifier)
    }

}

extension CategoriaViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCategorias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let categoriaCell = self.categoriaTV.dequeueReusableCell(withIdentifier: CategoriaCell.defaultReuseIdentifier, for: indexPath) as! CategoriaCell
        categoriaCell.nombreCategoriaLBL.text = self.listaCategorias[indexPath.row]
        return categoriaCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath != self.seleccionIndexPath{
            self.seleccionIndexPath = indexPath
            self.nombreCategoriaSeleccionada = listaCategorias[indexPath.row]
            self.delegate?.nombreCategoriaSeleccionada(self, withIndexPath: self.nombreCategoriaSeleccionada)
            self.navigationController?.popViewController(animated: true)
            
        }
    }
    
}
