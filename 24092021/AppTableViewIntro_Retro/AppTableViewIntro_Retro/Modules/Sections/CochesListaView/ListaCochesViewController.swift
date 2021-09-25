//
//  ListaCochesViewController.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import UIKit

class ListaCochesViewController: UIViewController {

    var arrayCochesData: [CochesModel] = []
    var imagenCoche = UIImage(named: "audi")
    
    @IBOutlet weak var listaCochesTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionTV()
        self.configuracionUI()

        // Do any additional setup after loading the view.
    }
    

    private func configuracionUI(){
        self.title = "Coches"
        for item in 0..<23{
            let modelData = CochesModel(nombre: "Audi", color: "Verde", imagen: imagenCoche)
            arrayCochesData.append(modelData)
            print("\(arrayCochesData[item])")
        }
    }
    
    private func configuracionTV() {
        self.listaCochesTV.delegate = self
        self.listaCochesTV.dataSource = self
        self.listaCochesTV.register(UINib(nibName: CochesCell.defaultReuseIdentifier,
                                          bundle: nil),
                                          forCellReuseIdentifier: CochesCell.defaultReuseIdentifier)
    }
 
    
    
}

extension ListaCochesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCochesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellCoches = self.listaCochesTV.dequeueReusableCell(withIdentifier: CochesCell.defaultReuseIdentifier, for: indexPath) as! CochesCell
        cellCoches.configuracionCell(data: self.arrayCochesData[indexPath.row])
        return cellCoches
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
