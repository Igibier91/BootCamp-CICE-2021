//
//  ViewController.swift
//  Magic8Ballz
//
//  Created by Ignacio Gilabert Bernal on 25/10/21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    let ballArray = [UIImage(named: "ball1"), UIImage(named: "ball2"), UIImage(named: "ball3"), UIImage(named: "ball4"), UIImage(named: "ball5")]
        
    
    // MARK: - IBOutlets
    @IBOutlet weak var ballImageView: UIImageView!
    
    
    
    // MARK: - IBActions
    @IBAction func askBTN(_ sender: UIButton) {
        ballImageView.image = ballArray[2]
    
    // MARK: - Functions
        ballImageView.image = ballArray.randomElement() as? UIImage
    
    
    
    
    }
    
    
    




}


