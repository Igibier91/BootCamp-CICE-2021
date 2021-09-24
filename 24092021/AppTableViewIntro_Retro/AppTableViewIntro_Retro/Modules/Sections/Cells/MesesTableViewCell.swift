//
//  MesesTableViewCell.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import UIKit

protocol MesesTableCiewCellProtocol{
    func configurationCell(data: String)
}


class MesesTableViewCell: UITableViewCell {

    
    //MARK: - IBOutlets
    @IBOutlet weak var mesesLBL: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension MesesTableViewCell: MesesTableCiewCellProtocol{
    internal func configurationCell(data: String) {
        self.mesesLBL.text = data
    }
    
    
}
