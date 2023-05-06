//
//  ViewController.swift
//  CustomTabBar
//
//  Created by Дмитрий Лоренц on 06.05.2023.
//

import UIKit

class MaintabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
    }

    private func generateTabBar() {
        viewControllers = []
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
}

