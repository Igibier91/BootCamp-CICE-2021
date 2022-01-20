//
//  TrialViewController.swift
//  Qamtara
//
//  Created by Ignacio Gilabert Bernal on 18/1/22.
//

import UIKit

class TrialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
