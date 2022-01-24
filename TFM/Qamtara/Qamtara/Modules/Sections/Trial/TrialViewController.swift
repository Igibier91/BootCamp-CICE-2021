//
//  TrialViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 18/1/22.
//

import UIKit

class TrialViewController: UIViewController {

    // MARK: - Variables
    var heroNameChosen: String?
    
    // MARK: - IBOutlets
    @IBOutlet weak var trialTextLBL: UILabel!
    
    
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
        trialTextLBL.text = "Pero bueno \(heroNameChosen ?? "Héroe"), mira que hora es."
    }

    func navigateCombat(){
        let mainVC = CombatViewController()
        mainVC.heroNameChosen = heroNameChosen
        present(mainVC, animated: true, completion: nil)
    }
    
}
