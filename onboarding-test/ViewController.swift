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

