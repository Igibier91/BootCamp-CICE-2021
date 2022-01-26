//
//  IntroViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 2/1/22.
//

import UIKit
import AVFoundation

class IntroViewController: UIViewController, UITextFieldDelegate {

    // MARK: - Variables
    var heroNameTXT = ""
    var player: AVAudioPlayer!
    var soundName: String = ""
    
    // MARK: - IBOutlets
    @IBOutlet var introTextLBL: UILabel!
    @IBOutlet weak var heroNameTF: UITextField!
    
    
    // MARK: - IBActions
    @IBAction func heroNameTF(_ sender: Any) {
        heroNameTF.delegate = self
        self.view.endEditing(true)
    }
    @IBAction func okButton(_ sender: UIButton) {
        playSound(soundName: "Play")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
        heroName()
        navigateTrial()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTexts()
        playSound(soundName: "MainMusic")

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
        introTextLBL.text = introTXT
        introTextLBL.layer.shadowColor = UIColor.black.cgColor
        introTextLBL.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        introTextLBL.layer.shadowOpacity = 1.0
        introTextLBL.layer.shadowRadius = 2.0
    }
    
    func heroName() {
       heroNameTXT = heroNameTF.text!
       print(heroNameTXT)
    }
    
    func navigateTrial(){
        let mainVC = TrialViewController()
        mainVC.heroNameChosen = heroNameTXT
        present(mainVC, animated: true, completion: nil)
    }
    // called when 'return' key pressed. return NO to ignore.
        func textFieldShouldReturn(_ textField: UITextField) -> Bool
        {
            textField.resignFirstResponder()
            return true;
        }
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    
    }

