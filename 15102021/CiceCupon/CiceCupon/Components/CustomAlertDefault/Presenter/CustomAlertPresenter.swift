//
//  CustomAlertPresenter.swift
//  CiceCupon
//
//  Created by Ignacio Gilabert Bernal on 23/10/21.
//

import Foundation

enum DefaultAlertType: Int {
    case confirmationLogin
    case successLogin
    case none
}

struct CustomAlertViewModel {
    
    var type: DefaultAlertType
    
    //TODO: - Confirmation Login
    var confirmationTitle = LocalizedKeys.Login.titleHelloAlert
    var confirmationMessage = LocalizedKeys.Login.messageWarningAlert
    var confirmationPrimaryButton = LocalizedKeys.General.primaryButtonAlertDefault
    var confirmationSecundaryButton = LocalizedKeys.General.secundaryButtonAlertDefault
    
    //TODO: - Success Login
    var succesLoginTitle = LocalizedKeys.Login.titleHelloAlert
    var succesLoginMessage = LocalizedKeys.Login.successLoginMessageAlert
    var succesLoginPrimaryButton = LocalizedKeys.General.continueButton
    
    
    init(type: DefaultAlertType){
        self.type = type
    }
}
