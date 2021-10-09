//
//  DetalleContactoViewController.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import UIKit


class DetalleContactoViewController: UIViewController {
    @IBOutlet weak var contactoTV: UITableView!
    //Esto lo vamos a mandar
    var dataDetail: ArrayContact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionTV()

    }

    private func configuracionTV(){
        self.contactoTV.delegate = self
        self.contactoTV.dataSource = self
        self.contactoTV.register(UINib(nibName: PerfilCell.defaultReuseIdentifier, bundle: nil), forCellReuseIdentifier: PerfilCell.defaultReuseIdentifier)
    }

}

extension DetalleContactoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let perfilCell = self.contactoTV.dequeueReusableCell(withIdentifier: PerfilCell.defaultReuseIdentifier, for: indexPath) as! PerfilCell
        if let dataDetalleDes = self.dataDetail{
            perfilCell.configuracionCelda(data: dataDetalleDes)
        }
        
        return perfilCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
