//
//  ViewController.swift
//  onboarding-test
//
//  Created by Benedikt Kurz on 09.06.20.
//  Copyright © 2020 Benedikt Kurz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var btnCamera: UIButton!
    @IBOutlet weak var btnAddContainer: UIButton!
    @IBOutlet weak var btnContainerCatalogue: UIButton!
    @IBOutlet weak var btnInfo: UIButton!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var lblContainerChoice: UILabel!
    @IBOutlet weak var lblContainerCatalogue: UILabel!
    @IBOutlet weak var btnStepForward: UIButton!
    
    var stepper: Int  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        blurView.isHidden = true
        
        
        
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        
        blurView.isHidden = false
        
        
        //blurView.effect = UIVisualEffectView(frame: blurView)
    }
    
    @IBAction func btnButtonDoAll(_ sender: Any) {
        
        if blurView.isHidden {
            
            blurView.isHidden = false
          //  blurView.isUserInteractionEnabled = true
            
            
        } else {
            
            blurView.isHidden = true
        }
        
        
    }
    
    @IBAction func btnEnableDIsable(_ sender: UIButton) {
        
        if blurView.effect == .none {
            
            blurView.effect =  UIBlurEffect(style: .light) //UIVisualEffect(effect: UIBlurEffect(style: .dark))
            
        } else {
        

            blurView.effect = .none
            //blurView.isUserInteractionEnabled = true
        }
    
        
        
        
        
        
    }
}

