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
        introTextLBL.text = "¿Hola? ¿¡Hola!? ¿Qué haces ahí tirado en medio del bosque? Pensaba que eras el elegido para salvar a Qamtara de la tiranía de Loz Orkolokoz, y mírate, no te puedes ni mover. ¿Podrías al menos ESCRIBIR tu nombre?"
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

