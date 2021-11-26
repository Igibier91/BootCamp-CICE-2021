//
//  StartScreenViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 15/11/21.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var subtitleLBL: UILabel!
    @IBOutlet weak var titleLBL: UILabel!
    
    // MARK: - IBActions
    @IBAction func playBTNACT(_ sender: Any) {
    }
    
    @IBAction func tutorialBTNACT(_ sender: Any) {
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
    
    func setTexts() {
        titleLBL.text = "Qamtara"
        subtitleLBL.text = "Un RPG para mis compañeros de CICE"
    }
    
    
    
}
