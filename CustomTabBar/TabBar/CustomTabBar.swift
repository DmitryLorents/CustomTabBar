//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Дмитрий Лоренц on 07.05.2023.
//

import UIKit

class CustomTabBar: UITabBarController, UITabBarControllerDelegate {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.selectedIndex = 1
        setupMiddleButton()
    }
    
    private func setupMiddleButton() {
        let middleButton = UIButton(frame: CGRect(x: self.view.bounds.width/2, y: -20, width: 60, height: 60))
        
        middleButton.setBackgroundImage(UIImage(named: "home-icon-bg"), for: .normal)
    }
    
    
}
