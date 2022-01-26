//
//  EndViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 24/1/22.
//

import UIKit
import AVFoundation

class EndViewController: UIViewController {

    // MARK: - Variables
    var heroNameChosen: String?
    var player: AVAudioPlayer!
    var soundName: String = ""
    
    // MARK: - IBOutlets
    @IBOutlet weak var endTitleLBL: UILabel!
    @IBOutlet weak var endTextLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTexts()
        playSound(soundName: "EndMusic")

        
        // forzar landscape orientation
        let value = UIInterfaceOrientation.landscapeRight.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        }
        override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            return .landscapeRight
        }
        override var shouldAutorotate: Bool {
            return true
        }
    
    //MARK: - Functions
    
    func setTexts(){
        endTitleLBL.text = endTitleTXT
        endTextLBL.text = endTXT
    
        endTitleLBL.layer.shadowColor = UIColor.black.cgColor
        endTitleLBL.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        endTitleLBL.layer.shadowOpacity = 1.0
        endTitleLBL.layer.shadowRadius = 2.0
        
        endTextLBL.layer.shadowColor = UIColor.black.cgColor
        endTextLBL.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        endTextLBL.layer.shadowOpacity = 1.0
        endTextLBL.layer.shadowRadius = 2.0
        }

    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }


}
