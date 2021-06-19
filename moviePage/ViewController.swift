//
//  ViewController.swift
//  moviePage
//
//  Created by Temitope on 19/06/2021.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
//        UITabBar.appearance().barTintColor = .systemBackground
//        tabBar.tintColor = .label
        // Do any additional setup after loading the view.
        setupVCs()
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: HomeViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: FavouriteViewController(), title: NSLocalizedString("Favorite", comment: ""), image: UIImage(systemName: "bookmark")!)
                                
        ]
    }

    private func createNavController(for rootViewController: UIViewController, title: String, image:UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
}

