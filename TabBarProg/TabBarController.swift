//
//  ViewController.swift
//  TabBarProg
//
//  Created by Sebastian Strus on 2018-06-12.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }

    
    // in  assets set 'render as original, not default, because it is template'
    func setupTabBar() {
        tabBar.barTintColor = .green
        let videoController = createNavController(vc: VideoViewController(), unselected: "video_black", selected: "video_white")
//        let videoController = UINavigationController(rootViewController: VideoViewController())
//        videoController.tabBarItem.image = UIImage(named: "video_black")
//        videoController.tabBarItem.selectedImage = UIImage(named: "video_white")
        
        let favoriteController = createNavController(vc: FavoriteViewController(), unselected: "star_black", selected: "star_white")
//        let favoriteController = UINavigationController(rootViewController: FavoriteViewController())
//        videoController.tabBarItem.image = UIImage(named: "star_black")
//        videoController.tabBarItem.selectedImage = UIImage(named: "star_white")
        
        viewControllers = [videoController, favoriteController]
        
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0)
        }
    }
    
}

extension UITabBarController {//UIImage
    func createNavController(vc: UIViewController, unselected: String, selected: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem.image = UIImage(named: unselected)
        navController.tabBarItem.selectedImage = UIImage(named: selected)
        return navController
    }
}

