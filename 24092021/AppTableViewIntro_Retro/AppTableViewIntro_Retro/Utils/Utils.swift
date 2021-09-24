//
//  Utils.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 24/9/21.
//

import Foundation
import UIKit

protocol ReuseIdentifierProtocol: AnyObject {
    static var defaulReuseIdentifier: String{ get }
}

extension ReuseIdentifierProtocol where Self: UIView {
    static var defaultReuseIdentifier: String{
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

protocol ReuseIdentifierViewControllerProtocol: AnyObject {
    static var defaulReuseIdentifier: String{ get }
}

extension ReuseIdentifierViewControllerProtocol where Self: UIViewController {
    static var defaultReuseIdentifier: String{
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}


