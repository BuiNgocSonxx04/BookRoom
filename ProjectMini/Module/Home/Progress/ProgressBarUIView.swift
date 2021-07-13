//
//  ProgressBarUIView.swift
//  ProjectMini
//
//  Created by Sơn on 6/30/21.
//

import UIKit
@IBDesignable
class ProgressBarUIView: UIView {

    var backgroundLayer: CAShapeLayer!
    var foregroundLayer: CAShapeLayer!
    //var foregroundLayer1: CAShapeLayer!
    var textLayer: CATextLayer!
    
    let layerColer: CGFloat = 0.25
    //let layerColer1: CGFloat = 0.75
    
    override func draw(_ rect: CGRect) {
        let width = frame.size.width
        let height = frame.size.height
        
        let lineWidth = 0.1 * min(width, height)
        
        let center = CGPoint(x: width / 2, y: height / 2)
        let radius = (min(width, height) - lineWidth) / 2
        
        let startAngle = -CGFloat.pi / 2
        let endAngle = startAngle + 2 * CGFloat.pi
        
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        backgroundLayer = CAShapeLayer()
        
        backgroundLayer.path = circularPath.cgPath
        
        backgroundLayer.strokeColor = UIColor.lightGray.cgColor
        backgroundLayer.fillColor = UIColor.clear.cgColor
        backgroundLayer.lineWidth = lineWidth
        backgroundLayer.lineCap = .round
        
        foregroundLayer = CAShapeLayer()
        
        foregroundLayer.path = circularPath.cgPath
        
        foregroundLayer.strokeColor = #colorLiteral(red: 0.9803957343, green: 0.7240669131, blue: 0.1903012395, alpha: 1)
        foregroundLayer.fillColor = UIColor.clear.cgColor
        foregroundLayer.lineWidth = lineWidth
        foregroundLayer.lineCap = .round
        
        foregroundLayer.strokeStart = layerColer
        
        
        //foregroundLayer1.strokeStart = layerColer1
        
        
        layer.addSublayer(backgroundLayer)
        layer.addSublayer(foregroundLayer)
        //layer.addSublayer(foregroundLayer1)
    }
    
    @IBInspectable var layerColor: CGFloat = 0.25 {
        didSet{
            self.foregroundLayer.strokeStart = layerColor
        }
    }
}


