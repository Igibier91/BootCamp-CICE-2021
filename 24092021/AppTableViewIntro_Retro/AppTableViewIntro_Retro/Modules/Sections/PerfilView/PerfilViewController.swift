//
//  PerfilViewController.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import UIKit

class PerfilViewController: UIViewController {

    @IBOutlet weak var linkedInTV: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionTV()
    }

    private func configuracionTV(){
        self.linkedInTV.delegate = self
        self.linkedInTV.dataSource = self
        self.linkedInTV.register(UINib(nibName: PerfilCell.defaultReuseIdentifier, bundle: nil), forCellReuseIdentifier: PerfilCell.defaultReuseIdentifier)
        self.linkedInTV.register(UINib(nibName: PostCell.defaultReuseIdentifier, bundle: nil), forCellReuseIdentifier: PostCell.defaultReuseIdentifier)
    }
    
    private func muestraSelectorFoto(){
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            self.muestraPhotoLibrary()
        } else {
            self.muestraPhotoMenu()        }
    }
    
    private func muestraPhotoMenu(){
        let actionSheetVC = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        actionSheetVC.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        actionSheetVC.addAction(UIAlertAction(title: "Tomar Foto", style: .default, handler: {
            _ in
            self.tomafoto()
        }))
        actionSheetVC.addAction(UIAlertAction(title: "Escoge de la libería", style: .default, handler: {_ in
            self.muestraPhotoLibrary()
        }))
        self.present(actionSheetVC, animated: true, completion: nil)
    }
    
    private func muestraPhotoLibrary(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    private func tomafoto(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion: nil)
    }
    
}

extension PerfilViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cellPerfil = self.linkedInTV.dequeueReusableCell(withIdentifier: PerfilCell.defaultReuseIdentifier, for: indexPath) as! PerfilCell
            
            cellPerfil.delegate = self
            
            cellPerfil.configuracionCell(data: UserData(nombre: "Ignacio Gilabert", descripcionPerfil: "Consultor SAP Retail-MM", puestoActualPerfil: "Consultor SAP Senior", usuarioTwitterPerfil: "@Igiber91", imagenPerfil: "thor"))
        return cellPerfil
        default:
            let cellPost = self.linkedInTV.dequeueReusableCell(withIdentifier: PostCell.defaultReuseIdentifier, for: indexPath) as! PostCell
            cellPost.configuracionCell(data: UserCellData(nombre: "Ignacio Gilabert", puestoTrabajo: "Consultor SAP", horaUPost: "18:30h", descripcion: "Consultor askfjhsdifjsa", imgPost: "marketing", titulo: "Saludando a Andres", fuente: "Andres.com", nLikes: "400", nComentarios: "1"))
            return cellPost
            
        }
    }
    
        func numberOfSections(in tableView: UITableView) -> Int {
            2
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 270
        default:
            return UITableView.automaticDimension
    }

}

}

extension PerfilViewController: PerfilCellDelegate{
    func muestraAlerta(_ cell: UITableViewCell, info userData: UserData) {
        let alertVC = UIAlertController(title: userData.nombre, message: userData.descripcionPerfil, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertVC, animated: true, completion: nil)
    }
    
    func muestraPickerIV(_ cell: UITableViewCell) {
        self.muestraSelectorFoto()
    }

    
}
extension PerfilViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagePickerDes = info[.originalImage] as? UIImage{
            debugPrint(imagePickerDes)
        }
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}
