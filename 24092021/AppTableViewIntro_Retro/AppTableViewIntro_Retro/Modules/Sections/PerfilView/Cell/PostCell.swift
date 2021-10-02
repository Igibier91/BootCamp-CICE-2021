//
//  PostCell.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import UIKit

protocol PostCellProtocol{
    func configuracionCell(data:UserCellData)
}

class PostCell: UITableViewCell, ReuseIdentifierProtocol {

    @IBOutlet weak var descripcionPostLBL: UILabel!
    @IBOutlet weak var nombreLBL: UILabel!
    @IBOutlet weak var puestroTrabajoLBL: UILabel!
    @IBOutlet weak var horaUPostLBL: UILabel!
    @IBOutlet weak var tituloPostLBL: UILabel!
    @IBOutlet weak var fuenteLBL: UILabel!
    @IBOutlet weak var nLikesLBL: UILabel!
    @IBOutlet weak var nComentariosLBL: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension PostCell: PostCellProtocol {
    func configuracionCell(data: UserCellData) {
        self.nombreLBL.text = data.nombre
        self.descripcionPostLBL.text = data.descripcion
        self.puestroTrabajoLBL.text = data.puestoTrabajo
        self.horaUPostLBL.text = data.horaUPost
        self.tituloPostLBL.text = data.titulo
        self.fuenteLBL.text = data.fuente
        self.nLikesLBL.text = data.nLikes
        self.nComentariosLBL.text = data.nComentarios
    }
}
