//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Variables
//    var dieSides: [String] = [UIImage(named: "DiceOne")][0]
    var leftDiceNumber: Int = 0
    var rightDiceNumber: Int = 5
//  var randomizingDice = Int.random(in: 0...5)
    let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]

    
    // MARK: - IBOutlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // MARK: - IBActions
    @IBAction func rollBTN(_ sender: UIButton) {
    print("Button got tapped.")

        
    // Dice 1 values
        diceImageView1.image = diceArray.randomElement() as? UIImage
    
    // Dice 2 values
        diceImageView2.image = diceArray.randomElement() as? UIImage
    
    }
    
    
    // MARK: - Functions


}

