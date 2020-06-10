//
//  ViewController_V2.swift
//  onboarding-test
//
//  Created by Benedikt Kurz on 10.06.20.
//  Copyright © 2020 Benedikt Kurz. All rights reserved.
//

import UIKit
import ARKit


class ViewController_V2: UIViewController {
    
    
    @IBOutlet weak var scnkitview: SCNView!
    @IBOutlet weak var sceneview: ARSCNView!
    @IBOutlet weak var btnAbout: UIButton!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var btnScreenshot: UIButton!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        let object = scnkitview.scene?.rootNode.childNode(withName: "ABS_5QM_OFFEN", recursively: true)
        
        
        let rotate = SCNAction.rotateBy(x: 0, y: .pi, z: 0, duration: 5)
        let repeatForever = SCNAction.repeatForever(rotate)
        
        
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around z
        spin.fromValue = NSValue(scnVector4: SCNVector4(x: 0, y: 0, z: 1, w: 0))
        spin.toValue = NSValue(scnVector4: SCNVector4(x: 0, y: 0, z: 1, w: .pi))
        spin.duration = 1
        spin.repeatCount = .infinity
        //object!.addAnimation(spin, forKey: "spin around")
        
        
        object?.runAction(repeatForever)
        
        
        //object?.addAnimation(an, forKey: <#T##String?#>)
    }
    
    
    
    
    @IBAction func btnHideBlurView(_ sender: Any) {
        
        blurView.isHidden = true
        
    }
    

    var borderWidth : CGFloat = 4 // Should be less or equal to the `radius` property
    var radius : CGFloat = 10
    var triangleHeight : CGFloat = 15

    private func bubblePathForContentSize(contentSize: CGSize) -> UIBezierPath {
        let rect = CGRect(0, 0, contentSize.width, contentSize.height).offsetBy(dx: radius, dy: radius + triangleHeight)
        let path = UIBezierPath();
        let radius2 = radius - borderWidth / 2 // Radius adjasted for the border width

        path.moveToPoint(CGPointMake(rect.maxX - triangleHeight * 2, rect.minY - radius2))
        path.addLineToPoint(CGPointMake(rect.maxX - triangleHeight, rect.minY - radius2 - triangleHeight))
        path.addArcWithCenter(CGPointMake(rect.maxX, rect.minY), radius: radius2, startAngle: CGFloat(-M_PI_2), endAngle: 0, clockwise: true)
        path.addArcWithCenter(CGPointMake(rect.maxX, rect.maxY), radius: radius2, startAngle: 0, endAngle: CGFloat(M_PI_2), clockwise: true)
        path.addArcWithCenter(CGPointMake(rect.minX, rect.maxY), radius: radius2, startAngle: CGFloat(M_PI_2), endAngle: CGFloat(M_PI), clockwise: true)
        path.addArcWithCenter(CGPointMake(rect.minX, rect.minY), radius: radius2, startAngle: CGFloat(M_PI), endAngle: CGFloat(-M_PI_2), clockwise: true)
        path.closePath()
        return path
    }

}
