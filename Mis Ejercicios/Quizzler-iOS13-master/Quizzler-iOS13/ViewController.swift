//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    let quiz = ["4+2 = 6", "5 - 3 > 1", "3 + 8 < 10"]
    
    var questionNumber = 0

    // MARK: - IBOutlets
    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var barPV: UIProgressView!
    @IBOutlet weak var trueBTN: UIButton!
    @IBOutlet weak var falseBTN: UIButton!
    
    
    // MARK: - IBActions
    @IBAction func answerBTNPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
        
    }

    func updateUI() {
        questionLBL.text = quiz[questionNumber]

    }

}

