//
//  HomeTabBarViewController.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import UIKit

class HomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // controladores
        let listaMesesVC = ListaMesesCoordinator.navigation()
        let listaCochesVC = ListaCochesCoordinator.navigation()
        
        // iconos que corresponden a cada controlador
        let listaMesesItem = UITabBarItem(title: "Meses",
                                          image: UIImage(systemName: "house"),
                                          selectedImage: UIImage(systemName: "house"))
        
        let listaCochesItem = UITabBarItem(title: "Coches",
                                          image: UIImage(systemName: "house"),
                                          selectedImage: UIImage(systemName: "house"))
        
        // asignacion a cada controlador su icono
        listaMesesVC.tabBarItem = listaMesesItem
        listaCochesVC.tabBarItem = listaCochesItem
        
        // le dices al Tab Bar que coloque un array de controladores
        self.viewControllers = [listaMesesVC, listaCochesVC]
        
        // porque icono quieres que arranque 
       // self.selectedIndex = 1
        
        
    }



}
