//
//  HomeTabBarCoordinator.swift
//  AppTableViewIntro_Retro
//
//  Created by Ignacio Gilabert Bernal on 25/9/21.
//

import Foundation
import UIKit

final class HomeTabBarCoodinator{
    
    static func tabBarCoordinator() -> UITabBarController{
        let tabBarVC = HomeTabBarViewController()
        
        // controladores
        let listaMesesVC = ListaMesesCoordinator.navigation()
        let listaCochesVC = ListaCochesCoordinator.navigation()
        let perfilVC = PerfilViewCoordinator.viewController()
        
        // iconos que corresponden a cada controlador
        let listaMesesItem = UITabBarItem(title: "Meses",
                                          image: UIImage(systemName: "house"),
                                          selectedImage: UIImage(systemName: "house"))
        
        let listaCochesItem = UITabBarItem(title: "Coches",
                                          image: UIImage(systemName: "house"),
                                          selectedImage: UIImage(systemName: "house"))
        
        let perfilItem = UITabBarItem(title: "Perfil",
                                          image: UIImage(systemName: "person.crop.circle"),
                                          selectedImage: UIImage(systemName: "person.crop.circle"))
        
        
        
        // asignacion a cada controlador su icono
        listaMesesVC.tabBarItem = listaMesesItem
        listaCochesVC.tabBarItem = listaCochesItem
        perfilVC.tabBarItem = perfilItem
        
        // le dices al Tab Bar que coloque un array de controladores
        tabBarVC.viewControllers = [listaMesesVC, listaCochesVC, perfilVC]
        
        return tabBarVC
    }
}
