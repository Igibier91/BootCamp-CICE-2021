//
//  HomeTabBarCoordinator.swift
//  AppTaskVersion2.0
//
//  Created by Ignacio Gilabert Bernal on 8/10/21.
//

import Foundation
import UIKit

final class HomeTabBarViewCoordinator {
    static func viewController() -> UITabBarController {
        let homeTBVC = HomeTabBarViewController()
        
        //ViewControllers con el Coordinador, estamos embebiendo el navigation bar
        let contactosVC = ContactosViewCoordinator.navigation()
        let nuevaTareaVC = NuevaTareaCoordinator.navigation()
        let listaTareasVC = ListaTareasCoordinator.navigation()
        
        // Iconos
        let contactosItem = UITabBarItem(title: "Contactos", image: UIImage(systemName: "person.3"), selectedImage: UIImage(named: "person.3.fill"))
        
        let nuevaTareaItem = UITabBarItem(title: "Nueva Tarea", image: UIImage(systemName: "scribble"), selectedImage: UIImage(named: "scribble"))
        
        let listaTareasItem = UITabBarItem(title: "Lista Tareas", image: UIImage(systemName: "slider.horizontal.3"), selectedImage: UIImage(named: "slider.horizontal.3"))
        
        // Asignando el icono al controlador de vista
        contactosVC.tabBarItem = contactosItem
        nuevaTareaVC.tabBarItem = nuevaTareaItem
        listaTareasVC.tabBarItem = listaTareasItem
        
        //Rellenamos el array de Controladores
        homeTBVC.viewControllers = [contactosVC, nuevaTareaVC, listaTareasVC]
        
        return homeTBVC
    }
}
