//
//  StartScreenViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 15/11/21.
//

import UIKit
import AVFoundation

class StartScreenViewController: UIViewController {
    // MARK: - Variables
    var player: AVAudioPlayer!
    var soundName: String = ""
    
    // MARK: - IBOutlets
    @IBOutlet weak var subtitleLBL: UILabel!
    @IBOutlet weak var titleLBL: UILabel!
    
    // MARK: - IBActions
    @IBAction func playBTNACT(_ sender: UIButton) {
        playSound(soundName: "Play")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
        navigateIntro()
    }
    
    @IBAction func tutorialBTNACT(_ sender: UIButton) {
        
        playSound(soundName: "Ok")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
        
        showAlertTutorial(title: "Qamtara", message: showAlertTutorialTXT)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTexts()
        playSound(soundName: "StartMusic")
        
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
    
    // MARK: - Functions
    func setTexts() {
        titleLBL.text = titleTXT
        subtitleLBL.text = subtitleTXT
        subtitleLBL.layer.shadowColor = UIColor.black.cgColor
        subtitleLBL.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        subtitleLBL.layer.shadowOpacity = 1.0
        subtitleLBL.layer.shadowRadius = 2.0
        titleLBL.layer.shadowColor = UIColor.black.cgColor
        titleLBL.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        titleLBL.layer.shadowOpacity = 1.0
        titleLBL.layer.shadowRadius = 2.0
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
   
    // mostrar un tutorial como una alerta
    func showAlertTutorial(title: String, message: String) {
        let alertGuide = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let guideOK = UIAlertAction(title: "¡Entendido!", style: .default) { UIAlertAction in
            
        }
        alertGuide.addAction(guideOK)
        present(alertGuide, animated: true, completion: nil)
    
    }
    
    func navigateIntro(){
        let mainVC = IntroViewController()
        present(mainVC, animated: true, completion: nil)
    }
    
    
}
