//
//  ListaMesesViewController.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import UIKit

class ListaMesesViewController: UIViewController, ReuseIdentifierViewControllerProtocol {

    //MARK: - Variables
    let arrayMeses = ["Enero", "Febrero", "Marzo", "Abril"]
    
    //MARK: - IBOutlets
    @IBOutlet weak var listaMesesTV: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Meses"
        configuracionTV()

    }

    //MARK: - Funciones
    private func configuracionTV(){
        self.listaMesesTV.delegate = self
        self.listaMesesTV.dataSource = self
        self.listaMesesTV.register(UINib(nibName: "MesesTableViewCell", bundle: nil), forCellReuseIdentifier: "MesesTableViewCell")
        
    }
    
    
    

}

extension ListaMesesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMeses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellMeses = self.listaMesesTV.dequeueReusableCell(withIdentifier: "MesesTableViewCell", for: indexPath) as! MesesTableViewCell
    
        cellMeses.configurationCell(data: self.arrayMeses[indexPath.row])
        return cellMeses
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = arrayMeses[indexPath.row]
        let vc = DetalleListaMesesViewController()
        vc.mesSeleccionado = model
        
        //
        // self.show(vc, sender: nil)
        //
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
    
}
