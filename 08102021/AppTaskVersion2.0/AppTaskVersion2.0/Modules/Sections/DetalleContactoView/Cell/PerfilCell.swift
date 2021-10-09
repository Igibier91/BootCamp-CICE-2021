//
//  PerfilCell.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import UIKit

protocol PerfilCellProtocol {
    func configuracionCelda(data: ArrayContact)
}

class PerfilCell: UITableViewCell, ReuseIdentifierProtocol {
//MARK: - IBOutlets
    @IBOutlet weak var myImagenPerfil: UIImageView!
    @IBOutlet weak var myUsuarioTwitter: UILabel!
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    @IBOutlet weak var myCVLBL: UILabel!
    @IBOutlet weak var degradadoIMGPerfil: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configuracionUI()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func configuracionUI(){
        self.degradadoIMGPerfil.layer.cornerRadius = self.myImagenPerfil.frame.width / 2
        self.degradadoIMGPerfil.layer.borderWidth = 1
        self.degradadoIMGPerfil.layer.borderColor = UIColor.gray.cgColor
        self.myImagenPerfil.layer.cornerRadius = self.myImagenPerfil.frame.width / 2
    }
    
}

extension PerfilCell: PerfilCellProtocol {
    func configuracionCelda(data: ArrayContact) {
        self.myImagenPerfil.image = UIImage(named: data.imageProfile ?? "placeholder(1)")
        self.myUsuarioTwitter.text = data.usernameTwitter
        self.myNombreLBL.text = data.firstName
        self.myApellidoLBL.text = data.lastName
        self.myCVLBL.text = data.descriptionCV
    }
}
