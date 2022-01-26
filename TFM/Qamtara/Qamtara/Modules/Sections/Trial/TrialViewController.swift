//
//  TrialViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 18/1/22.
//

import UIKit
import AVFoundation

class TrialViewController: UIViewController {

    
    
    // MARK: - Variables
    var heroNameChosen: String?
    var player: AVAudioPlayer!
    var soundName: String = ""
    
    // MARK: - IBOutlets
    @IBOutlet weak var trialTextTV: UITextView!

    // MARK: - IBActions
    @IBAction func siButton(_ sender: UIButton) {
        playSound(soundName: "Play")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
    }
        navigateCombat()
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
            
        trialTextTV.text = "Pero bueno \(heroNameChosen ?? "Héroe"), mira que hora es. ¡Se nos ha hecho hasta de día! Osea, que tú eres el elegido... Muy bien, muy bien, tendré que conformarme contigo, ¡Espero que no nos decepciones! Vas a combatir con el Rey de los Orkolokoz, el combate será de la siguiente forma:    Vais a tirar simultáneamente dos dados cada uno, tu resultado total será comparado al total del Orko, si tu tirada es mayor que la del Orko, le quitarás un porcentaje de vida en función a la diferencia de vuestras tiradas. ¡Pero cuidado! Si su tirada es mayor, tú serás el que pierda vida. El primero que deje la barra de vida de su oponente a 0, será declarado vencedor. Por favor \(heroNameChosen ?? "Héroe"), pulsa en el botón de Sí cuando estés preparado. ¡BUENA SUERTE!"
        trialTextTV.layer.shadowColor = UIColor.black.cgColor
        trialTextTV.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        trialTextTV.layer.shadowOpacity = 1.0
        trialTextTV.layer.shadowRadius = 2.0
        
    }

    func navigateCombat(){
        let mainVC = CombatViewController()
        mainVC.heroNameChosen = heroNameChosen
        present(mainVC, animated: true, completion: nil)
    }

    // MARK: - Functions

    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
