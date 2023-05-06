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
        viewControllers = [
        generateVC(viewController: HomeViewController(), title: "Home", image: UIImage(systemName: "house.fill")),
        generateVC(viewController: PersonViewController(), title: "Personal info", image: UIImage(systemName: "person.fill")),
        generateVC(viewController: SettingsViewController(), title: "Settings", image: UIImage(systemName: "slider.horizontal.3"))
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
}

