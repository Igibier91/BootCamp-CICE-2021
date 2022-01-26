//
//  CombatViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 24/1/22.
//

import UIKit
import AVFoundation

class CombatViewController: UIViewController {

    // MARK: - Variables
    var player: AVAudioPlayer!
    var soundName: String = ""
    var heroNameChosen: String?
    var healthLoss: Int = 0
    
    let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]

    
    
    // MARK: - IBOutlets
    @IBOutlet weak var heroLeftDice: UIImageView!
    @IBOutlet weak var heroRightDice: UIImageView!
    @IBOutlet weak var orkoLeftDice: UIImageView!
    @IBOutlet weak var orkoRightDice: UIImageView!
    @IBOutlet weak var heroHealth: UIProgressView!
    @IBOutlet weak var orkoHealth: UIProgressView!
    @IBOutlet weak var heroNameLBL: UILabel!
    @IBOutlet weak var orkolokoNameLBL: UILabel!
    @IBOutlet weak var damageLBL: UILabel!
    
    
    // MARK: - IBActions
    @IBAction func attackBTN(_ sender: UIButton) {

        playSound(soundName: "Dice")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1}
        randomizeAttack()
    
        

        
        // End Trigger
        if orkoHealth.progress <= 0 {
            navigateEnd()
        } else if heroHealth.progress <= 0 {
            navigateDefeat()        }

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTexts()
        
        // 100% health bar
        heroHealth.progress = 1
        orkoHealth.progress = 1
        
        // Label transparency
        damageLBL.alpha = 0
        


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
        heroNameLBL.text = "\(heroNameChosen ?? "Héroe")"
      
        heroNameLBL.layer.shadowColor = UIColor.black.cgColor
        heroNameLBL.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        heroNameLBL.layer.shadowOpacity = 1.0
        heroNameLBL.layer.shadowRadius = 2.0
    
        orkolokoNameLBL.layer.shadowColor = UIColor.black.cgColor
        orkolokoNameLBL.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        orkolokoNameLBL.layer.shadowOpacity = 1.0
        orkolokoNameLBL.layer.shadowRadius = 2.0
        
        damageLBL.layer.shadowColor = UIColor.black.cgColor
        damageLBL.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        damageLBL.layer.shadowOpacity = 1.0
        damageLBL.layer.shadowRadius = 2.0
    }
    
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    // Assign a random number to dice image
    func randomizeAttack() {
        let heroLeftDiceArrayInt = Int.random(in: 1...6)
        let heroRightDiceArrayInt = Int.random(in: 1...6)
        let orkoLeftDiceArrayInt = Int.random(in: 1...6)
        let orkoRightDiceArrayInt = Int.random(in: 1...6)

        // Hero Conditions
        if(heroLeftDiceArrayInt == 1)
        {
            heroLeftDice.image = diceArray[0]
        }
        if(heroLeftDiceArrayInt == 2)
        {
            heroLeftDice.image = diceArray[1]
        }
        if(heroLeftDiceArrayInt == 3)
        {
            heroLeftDice.image = diceArray[2]
        }
        if(heroLeftDiceArrayInt == 4)
        {
            heroLeftDice.image = diceArray[3]
        }
        if(heroLeftDiceArrayInt == 5)
        {
            heroLeftDice.image = diceArray[4]
        }
        if(heroLeftDiceArrayInt == 6)
        {
            heroLeftDice.image = diceArray[5]
        }
        
        if(heroRightDiceArrayInt == 1)
        {
            heroRightDice.image = diceArray[0]
        }
        if(heroRightDiceArrayInt == 2)
        {
            heroRightDice.image = diceArray[1]
        }
        if(heroRightDiceArrayInt == 3)
        {
            heroRightDice.image = diceArray[2]
        }
        if(heroRightDiceArrayInt == 4)
        {
            heroRightDice.image = diceArray[3]
        }
        if(heroRightDiceArrayInt == 5)
        {
            heroRightDice.image = diceArray[4]
        }
        if(heroRightDiceArrayInt == 6)
        {
            heroRightDice.image = diceArray[5]
        }
        
        // Orkoloko Conditions
        if(orkoLeftDiceArrayInt == 1)
        {
            orkoLeftDice.image = diceArray[0]
        }
        if(orkoLeftDiceArrayInt == 2)
        {
            orkoLeftDice.image = diceArray[1]
        }
        if(orkoLeftDiceArrayInt == 3)
        {
            orkoLeftDice.image = diceArray[2]
        }
        if(orkoLeftDiceArrayInt == 4)
        {
            orkoLeftDice.image = diceArray[3]
        }
        if(orkoLeftDiceArrayInt == 5)
        {
            orkoLeftDice.image = diceArray[4]
        }
        if(orkoLeftDiceArrayInt == 6)
        {
            orkoLeftDice.image = diceArray[5]
        }
        
        if(orkoRightDiceArrayInt == 1)
        {
            orkoRightDice.image = diceArray[0]
        }
        if(orkoRightDiceArrayInt == 2)
        {
            orkoRightDice.image = diceArray[1]
        }
        if(orkoRightDiceArrayInt == 3)
        {
            orkoRightDice.image = diceArray[2]
        }
        if(orkoRightDiceArrayInt == 4)
        {
            orkoRightDice.image = diceArray[3]
        }
        if(orkoRightDiceArrayInt == 5)
        {
            orkoRightDice.image = diceArray[4]
        }
        if(orkoRightDiceArrayInt == 6)
        {
            orkoRightDice.image = diceArray[5]
        }
        
        // Prints
        print("Ataque")
        print("Dado izquierdo del héroe \(heroLeftDiceArrayInt)")
        print("Dado derecho del héroe \(heroRightDiceArrayInt)")
        print("Dado izquierdo del orko \(orkoLeftDiceArrayInt)")
        print("Dado derecho del orko \(orkoRightDiceArrayInt)")
        
        // Health Loss
        let totalHealthLoss = (heroLeftDiceArrayInt + heroRightDiceArrayInt) - (orkoLeftDiceArrayInt + orkoRightDiceArrayInt)
        print("El daño hecho es \(totalHealthLoss)")
        
        // Convert it to float and no sign
        let totalHealthLossFloat = Float(abs(totalHealthLoss))
        
        
        // Updating HP Bars Progress
        
        damageLBL.alpha = 1

        if (totalHealthLoss > 0){
            orkoHealth.progress -= (0.05 * totalHealthLossFloat)
            damageLBL.text = "Le inflijes \(Int(totalHealthLossFloat)) de daño"
            
        }
        if (totalHealthLoss < 0){
            heroHealth.progress -= (0.025 * totalHealthLossFloat)
            damageLBL.text = "Te inflije \(Int(totalHealthLossFloat)) de daño"
        }
        
        if (totalHealthLoss == 0){
            damageLBL.text = dmgZeroTXT
        }
    
    }
     
    func navigateDefeat(){
        showAlertDefeat(title: "¡Has sido derrotado!", message: showAlertDefeatTXT)
      

        
    }
    
    func navigateEnd(){
        let mainVC = EndViewController()
        present(mainVC, animated: true, completion: nil)
   
    }
    
    // show alert for retry the game
    func showAlertDefeat(title: String, message: String) {
        let alertGuide = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let guideOK = UIAlertAction(title: "Reintentar", style: .default) { UIAlertAction in
            
            let mainVC = StartScreenViewController()

            self.present(mainVC, animated: true, completion: nil)
        }
        alertGuide.addAction(guideOK)
        present(alertGuide, animated: true, completion: nil)
    
    }
    
}
