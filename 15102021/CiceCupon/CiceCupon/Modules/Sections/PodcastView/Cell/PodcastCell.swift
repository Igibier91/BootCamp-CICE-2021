//
//  PodcastCell.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 23/10/21.
//

import UIKit
import Kingfisher


protocol PodcastCellProtocol{
    func configCell(data: ResultiTunes?)
}

class PodcastCell: UITableViewCell {

    // MARK: - Static properties
    static let identifier = String(describing: PodcastCell.self)
    static var nib: UINib {
        UINib(nibName: identifier, bundle: nil)
    }
        
        // MARK: - Outlets
        
        @IBOutlet weak var artworkPIV: UIImageView!
        @IBOutlet weak var titlePLBL: UILabel!
        @IBOutlet weak var authorPLBL: UILabel!
        @IBOutlet weak var realeaseDatePLBL: UILabel!
        
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension PodcastCell: PodcastCellProtocol {
    func configCell(data: ResultiTunes?) {
        self.authorPLBL.text = data?.artistName
        self.realeaseDatePLBL.text = data?.releaseDate
        self.titlePLBL.text = data?.id
        
        let url = URL(string: data?.artworkUrl100 ?? "")
        let processor = DownsamplingImageProcessor(size: artworkPIV.bounds.size)
                     |> RoundCornerImageProcessor(cornerRadius: 20)
        artworkPIV.kf.indicatorType = .activity
        artworkPIV.kf.setImage(
            with: url,
            placeholder: UIImage(named: "placeholder"),
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        {
            result in
            switch result {
            case .success(let value):
                print("Task done for: \(value.source.url?.absoluteString ?? "")")
            case .failure(let error):
                print("Job failed: \(error.localizedDescription)")
            }
        }
        
    }
    
    
}

