//
//  ContactosCell.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import UIKit
protocol ContactosCellProtocol {
    func configuracionCelda(data: ArrayContact)
}

class ContactosCell: UITableViewCell, ReuseIdentifierProtocol {
    
    //MARK: - IBOutlets
    @IBOutlet weak var myContentView: UIView!
    @IBOutlet weak var myImagePerfil: UIImageView!
    @IBOutlet weak var myNombrePerfil: UILabel!
    @IBOutlet weak var myApellidoPerfil: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configuracionUI()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configuracionUI(){
        self.myImagePerfil.layer.cornerRadius = self.myImagePerfil.frame.width / 2
        self.myImagePerfil.layer.borderWidth = 1
        self.myImagePerfil.layer.borderColor = UIColor.gray.cgColor
        self.myContentView.layer.cornerRadius = 10
    }
    
    
}
extension ContactosCell: ContactosCellProtocol {
    
    func configuracionCelda(data: ArrayContact) {
        self.myNombrePerfil.text = data.firstName
        self.myApellidoPerfil.text = data.lastName
        self.myImagePerfil.image = UIImage(named: data.imageProfile ?? "placeholder(1)")
    }
    
    
}
