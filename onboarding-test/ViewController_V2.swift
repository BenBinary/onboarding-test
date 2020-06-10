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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
