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
    @IBOutlet weak var trialTextTV: UITextView!
    
    
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
            
        trialTextTV.text = "Pero bueno \(heroNameChosen ?? "Héroe"), mira que hora es. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget cursus tortor. Etiam egestas sem vel blandit laoreet. In vel risus augue. Aenean sit amet accumsan mauris, eu pellentesque sapien. Etiam velit ex, rhoncus eget velit sed, vestibulum tempus neque. Mauris imperdiet felis neque, sed gravida arcu facilisis porta. Proin in velit sit amet eros porta gravida. Donec consequat dolor vitae ante laoreet, sed aliquet nisl dignissim. Maecenas elementum laoreet venenatis. Suspendisse sed egestas nulla.        Duis semper nisl nisl, id ultrices ligula sollicitudin at. In iaculis bibendum diam a rhoncus. Curabitur turpis nibh, pulvinar eget leo nec, vestibulum vestibulum sapien. Sed ultricies, mauris id gravida molestie, velit est molestie orci, sed ullamcorper lectus metus non magna. Vivamus aliquam enim eu ipsum mattis, quis pretium erat efficitur. Sed varius posuere ligula, sed molestie nulla aliquet sed. Suspendisse orci dui, blandit a semper nec, gravida eu eros.        Maecenas in tellus vitae justo mollis lacinia. Donec ultrices felis sed vehicula lacinia. Nunc eget congue purus, in rutrum augue. Duis cursus nunc id urna fermentum pulvinar. Maecenas consequat maximus justo, in tristique sem tristique ac. Praesent cursus lacus et erat dictum, nec lacinia erat sagittis. Nunc maximus rutrum porta. Donec ut arcu gravida nisl faucibus semper sed vitae urna. Aliquam ullamcorper dapibus risus quis sollicitudin.        Morbi facilisis congue nisl. Proin ac laoreet odio, eleifend efficitur eros. Maecenas nunc nunc, bibendum a viverra sed, ultricies eu leo. Integer ut iaculis est. Nam sit amet tellus at lorem porttitor interdum aliquam at lacus. Duis facilisis, lectus ut sagittis malesuada, velit magna porta risus, a ultrices urna libero vulputate enim. Etiam ut est eu velit facilisis posuere. Sed cursus augue quis risus sagittis, sed finibus enim porta. In accumsan consequat nisl at pellentesque.        Nulla sollicitudin tortor ac risus volutpat, a sollicitudin diam auctor. Praesent gravida bibendum est, vitae pulvinar nisl porta in. Aliquam dignissim, enim eu lobortis lacinia, lorem sem rutrum arcu, et dapibus dui justo non urna. Nulla aliquam est quam, sit amet convallis tortor tempor at. Cras ullamcorper finibus urna, id volutpat dui eleifend ut. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam volutpat gravida sodales. Duis eget velit lacus. Nam lacinia auctor pharetra. Sed sodales libero aliquet, consequat diam nec, congue eros. Suspendisse rhoncus eu quam vitae scelerisque. Nam feugiat erat a mauris facilisis dignissim. Nunc sit amet lacinia nibh."
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
    
}
