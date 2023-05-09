//
//  TaabBarVC.swift
//  CustomTabBar
//
//  Created by Дмитрий Лоренц on 09.05.2023.
//

import UIKit

class TaaBBarVC: UITabBar {
    
    private var shapeLayer: CALayer?
    
    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
    }
    
    override func draw(_ rect: CGRect) {
        //super.draw(rect)
        self.addShape()
        unselectedItemTintColor = .white
        tintColor = UIColor(named: "dark-brown")
    }
    
    private func createPath() -> CGPath {
        let height: CGFloat = 15
        let path = UIBezierPath()
        let centerWidth = frame.width / 2
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: frame.width, y: 0), controlPoint: CGPoint(x: centerWidth, y: height))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        path.addLine(to: CGPoint(x: 0, y: frame.height))
        path.close()
        
        return path.cgPath
    }
    
    
    
}
