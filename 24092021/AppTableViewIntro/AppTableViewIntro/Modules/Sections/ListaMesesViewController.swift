//
//  ListaMesesViewController.swift
//  AppTableViewIntro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import UIKit

class ListaMesesViewController: UIViewController {

    // MARK: - Variables
    let arrayMeses = ["Enero", "Febrero", "Marzo", "Abril"]
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var listaMesesTableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionTableView()
    }


    // MARK: - Metodos Privados
    private func configuracionTableView(){
        self.listaMesesTableView.delegate = self
        self.listaMesesTableView.dataSource = self
        self.listaMesesTableView.register(UINib(nibName: "MesesCell", bundle: nil), forCellReuseIdentifier: "MesesCell")
    }


}

extension ListaMesesViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMeses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellMeses = self.listaMesesTableView.dequeueReusableCell(withIdentifier: "MesesCell", for: indexPath) as! MesesCell
 //       cellMeses.mesesLBL.text = self.arrayMeses[indexPath.row]
        cellMeses.configuracionCell(data: self.arrayMeses[indexPath.row])
                return cellMeses
    }


}
