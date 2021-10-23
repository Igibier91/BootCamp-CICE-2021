//
//  HomeTabBarCoordinator.swift
//  CiceCupon
//
//  Created by Andres Felipe Ocampo Eljaiek on 16/10/21.
//

import Foundation
import UIKit

final class HomeTabBarCoordinator {
    
    static func tabBarCoordinator(dto: HomeTabBarCoordinatorDTO? = nil) -> UITabBarController {
        
        let tabVC = HomeTabBarViewController()
    
        // Modulos
        let musicVC = MusicCoordinator.navigation(dto: MusicCoordinatorDTO(arrayMusic: dto?.arrayMusic))
        let podcastVC = PodcastCoordinator.navigation()
        
        // item
        let musicItem = UITabBarItem(title: "Music",
                                     image: UIImage(systemName: "music.note.list"),
                                     selectedImage: UIImage(systemName: "music.note"))
        let podcastItem = UITabBarItem(title: "Podcast",
                                       image: UIImage(systemName: "music.note.list"),
                                       selectedImage: UIImage(systemName: "music.note"))
        
        // Modulo+Item
        musicVC.tabBarItem = musicItem
        podcastVC.tabBarItem = podcastItem
        
        // Modulos
        tabVC.viewControllers = [musicVC, podcastVC]
        
        return tabVC
    }
}

struct HomeTabBarCoordinatorDTO {
    var arrayMusic: [ResultiTunes]?
}
