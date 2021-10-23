//
//  PruebaEntradaVC.swift
//  EjerciciosBasicos
//
//  Created by Ignacio Gilabert Bernal on 20/10/21.
//

import UIKit

class PruebaEntradaVC: UIViewController {
// MARK: - Variables
    var a = 1
    var b = 2
    var indices = [1, 2, 3, 4, 5, 9 ,7]
    var x = 0
    
//MARK: - IBOutlets
    @IBOutlet weak var sumaLBL: UILabel!
    
    
    
//MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        pruebaBasica()
        pruebaBucles()
        pruebaWhile()
    }


    func pruebaBasica() {
        sumaLBL.text = "\(a+b)"
    }

    func pruebaBucles() {
        for indice in indices{
            print(indice)}
        }
    
    func pruebaWhile(){
        repeat {
            print("\(x)")
            (x = x + 1)
        } while (x<20)
    }



}
    
    

