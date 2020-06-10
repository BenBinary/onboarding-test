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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        let object = scnkitview.scene?.rootNode.childNode(withName: "ABS_5QM_OFFEN", recursively: true)
        
        
        let spin = CABasicAnimation(keyPath: "rotation")
        // Use from-to to explicitly make a full rotation around z
        spin.fromValue = NSValue(scnVector4: SCNVector4(x: 0, y: 0, z: 1, w: 0))
        spin.toValue = NSValue(scnVector4: SCNVector4(x: 0, y: 0, z: 1, w: Float(CGFloat(2 * M_PI))))
        spin.duration = 3
        spin.repeatCount = .infinity
        object!.addAnimation(spin, forKey: "spin around")
        
        
        //object?.addAnimation(an, forKey: <#T##String?#>)
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
