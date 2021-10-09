//
//  ContactosViewController.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import UIKit

class ContactosViewController: UIViewController {
    
    // MARK: - Variables locales
    var arrayContactos: [ArrayContact] = []

    // MARK: - IBOutlets
    @IBOutlet weak var contactosTV: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.alimentaArrayContactos()
        

    }

    private func alimentaArrayContactos(){
        self.title = "Contactos"
        self.arrayContactos = ContactosServerModel.stubbedContactos
        self.configurationTV()
    }

    private func configurationTV(){
        self.contactosTV.delegate = self
        self.contactosTV.dataSource = self
        self.contactosTV.register(UINib(nibName: ContactosCell.defaultReuseIdentifier, bundle: nil), forCellReuseIdentifier: ContactosCell.defaultReuseIdentifier)
    }

    
}

extension ContactosViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayContactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactosCell = self.contactosTV.dequeueReusableCell(withIdentifier: ContactosCell.defaultReuseIdentifier, for: indexPath) as! ContactosCell
        contactosCell.configuracionCelda(data: self.arrayContactos[indexPath.row])
        return contactosCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // mi modelo de datos es este
        let model = self.arrayContactos[indexPath.row]
        // Invoco mi VC
        let vc = DetalleContactoCoordinator.viewController(dvo: model)
        self.show(vc, sender: nil)
    }
    
}
