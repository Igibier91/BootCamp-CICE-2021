//
//  PerfilCell.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import UIKit


// Output
protocol PerfilCellDelegate: AnyObject{
    func muestraAlerta(_ cell: UITableViewCell, info userData: UserData)
    func muestraPickerIV(_ cell: UITableViewCell)
    func navegaDetallePerfil(_ cell: UITableViewCell, info userData: UserData)
}


// Input
protocol PerfilCellProtocol {
    func configuracionCell(data: UserData)
    }


class PerfilCell: UITableViewCell, ReuseIdentifierProtocol {

    
    weak var delegate: PerfilCellDelegate?
    var model: UserData?
    
    // MARK: - IBOutlets
    @IBOutlet weak var twitterLBL: UILabel!
    @IBOutlet weak var perfilImagen: UIImageView!
    @IBOutlet weak var perfilNombreLBL: UILabel!
    @IBOutlet weak var perfilDescripcionLBL: UILabel!
    @IBOutlet weak var perfilPuestoActualLBL: UILabel!
    @IBOutlet weak var editarPerfilBTN: UIButton!
    @IBOutlet weak var editarIMGBTN: UIButton!
    @IBAction func muestraAlertaEmailACTION(_ sender: Any) {
        if let modelDes = self.model{
            self.delegate?.muestraAlerta(self, info: modelDes)
        }
    }
    
    // MARK: - IBActions
    
    @IBAction func editarImagenPerfilACTION(_ sender: Any) {
    }
    @IBAction func editarACTION(_ sender: Any) {
        if let modelDes = self.model{
            self.delegate?.navegaDetallePerfil(self, info: modelDes)
    }
    }
    
    @IBOutlet weak var envioMailBTN: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configuredUI()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


        }
    private func configuredUI(){
        self.perfilImagen.layer.cornerRadius = self.perfilImagen.frame.width / 2
        self.editarPerfilBTN.layer.cornerRadius = self.perfilImagen.frame.width / 2
        self.editarIMGBTN.layer.cornerRadius = self.perfilImagen.frame.width / 2
        self.envioMailBTN.layer.cornerRadius = 10

    }

    }
extension PerfilCell: PerfilCellProtocol {
    func configuracionCell(data: UserData){
        self.model = data
        self.twitterLBL.text = data.usuarioTwitterPerfil
        self.perfilImagen.image = UIImage(named: data.imagenPerfil ?? "thor")
        self.perfilNombreLBL.text = data.nombre
        self.perfilDescripcionLBL.text = data.descripcionPerfil
        self.perfilPuestoActualLBL.text = data.puestoActualPerfil
    }
}
