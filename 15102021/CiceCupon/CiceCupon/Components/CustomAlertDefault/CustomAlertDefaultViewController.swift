//
//  CustomAlertDefaultViewController.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 23/10/21.
//

import UIKit

protocol CustomAlertDefaultViewControllerDelegate: AnyObject {
    func defaultPrimaryButtonPressed()
}

class CustomAlertDefaultViewController: UIViewController {
    //MARK: - Properties
    weak var delegate: CustomAlertDefaultViewControllerDelegate?
    var viewModel: CustomAlertViewModel?
    var type: DefaultAlertType?
    
    //MARK: - IBOutlets
    @IBOutlet weak var titleAlertLBL: UILabel!
    @IBOutlet weak var messageAlertLBL: UILabel!
    @IBOutlet weak var acceptBTN: UIButton!
    @IBOutlet weak var cancelBTN: UIButton!
    @IBOutlet weak var constHeightPrimaryButton: NSLayoutConstraint!
    @IBOutlet weak var constHeightSecondaryButton: NSLayoutConstraint!
    @IBOutlet weak var xMarkBTN: UIButton!
    @IBOutlet weak var constHeightXMarkButton: NSLayoutConstraint!
    @IBOutlet weak var contentAlertView: UIView!
    
    //MARK: - IBActions
    @IBAction func closeAlertACTION(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func acceptAlertACTION(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        self.delegate?.defaultPrimaryButtonPressed()
    }
    @IBAction func cancelAlertACTION(_ sender: UIButton) {
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.acceptBTN.layer.cornerRadius = 25
        self.acceptBTN.layer.borderWidth = 2
      //  self.acceptBTN.layer.borderColor = white
        self.customInitUI()
        // Do any additional setup after loading the view.
    }

    private func customInitUI(){
        switch viewModel?.type{
        case .confirmationLogin:
            self.titleAlertLBL.text = viewModel?.confirmationTitle
            self.messageAlertLBL.text = viewModel?.confirmationMessage
            self.controlShowButton()
        case .successLogin:
            self.titleAlertLBL.text = viewModel?.succesLoginTitle
            self.messageAlertLBL.text = viewModel?.succesLoginMessage
            self.acceptBTN.setTitle(viewModel?.succesLoginPrimaryButton, for: .normal)
            self.controlShowButton()
            
        default:
            self.titleAlertLBL.text = ""
            self.messageAlertLBL.text = ""
            self.acceptBTN.isHidden = true
            self.cancelBTN.isHidden = true
            
        }
        
        self.type = viewModel?.type
        
    }
    
    private func controlShowButton(){
        switch viewModel?.type{
        case .confirmationLogin:
            self.titleAlertLBL.text = viewModel?.confirmationTitle
            self.messageAlertLBL.text = viewModel?.confirmationMessage
            self.constHeightPrimaryButton.constant = 0
            self.constHeightSecondaryButton.constant = 0
            self.acceptBTN.isHidden = true
            self.cancelBTN.isHidden = true
        case .successLogin:
            self.constHeightSecondaryButton.constant = 0
            self.constHeightXMarkButton.constant = 0
            self.cancelBTN.isHidden = true
            self.cancelBTN.isHidden = true
                  
        default:
            self.titleAlertLBL.text = ""
            self.messageAlertLBL.text = ""
            self.acceptBTN.isHidden = true
            self.cancelBTN.isHidden = true
        
    }

}
}
