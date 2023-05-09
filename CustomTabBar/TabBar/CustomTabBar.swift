//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Дмитрий Лоренц on 07.05.2023.
//

import UIKit

class CustomTabBar: UITabBarController, UITabBarControllerDelegate {
         
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.selectedIndex = 1
        setupMiddleButton()
        setControllers()
    }
    
    private func setControllers() {
        let home = HomeViewController()
        home.tabBarItem.image = UIImage(systemName: "house.fill")
        let person = PersonViewController()
        person.tabBarItem.image = UIImage(systemName: "person.fill")
        let settings = SettingsViewController()
        settings.tabBarItem.image = UIImage(systemName: "slider.horizontal.3")
        
        setViewControllers([home, person, settings], animated: true)
    }
    
    private func setupMiddleButton() {
        let middleButton = UIButton(frame: CGRect(x: (self.view.bounds.width/2) - 30, y: -70, width: 60, height: 60))
        
        middleButton.setBackgroundImage(UIImage(named: "homeBarIcon"), for: .normal)
        middleButton.layer.shadowColor = UIColor.black.cgColor
        middleButton.layer.shadowOpacity = 0.1
        middleButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        tabBar.addSubview(middleButton)
        middleButton.addTarget(self, action: #selector(menubuttonAction(sender:)), for: .touchUpInside)
        self.view.layoutIfNeeded()
        
    }
    
    @objc func menubuttonAction(sender: UIButton) {
        selectedIndex = 1
    }
    
}
