//
//  ViewController.swift
//  onboarding-test
//
//  Created by Benedikt Kurz on 09.06.20.
//  Copyright © 2020 Benedikt Kurz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// BTN OUTLETS
    @IBOutlet var allButtons: [UIButton]!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var btnCamera: UIButton!
    @IBOutlet weak var btnAddContainer: UIButton!
    @IBOutlet weak var btnContainerCatalogue: UIButton!
    @IBOutlet weak var btnInfo: UIButton!
    
    /// Control Buttons
    @IBOutlet weak var btnStepForward: UIButton!
    
    /// LBS OUTLETS
    
    @IBOutlet var allLabels: [UILabel]!
    
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var lblContainerChoice: UILabel!
    @IBOutlet weak var lblContainerCatalogue: UILabel!
    @IBOutlet weak var lblCamera: UILabel!
    @IBOutlet weak var lblAddContainers: UILabel!
   
    

    
    /// Page Control
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var stepper: Int  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       //blurView.isHidden = true
        
        
      
        
        pageControl.size(forNumberOfPages: 5)
        
        
        //// Making all Buttons invisible
        for button in allButtons {
            
            button.isHidden = true
            
            
            
        }
        
        
        /// Making all All Labels
        for label in allLabels {
            
            label.isHidden = true
            label.layer.cornerRadius = 30
            
        }
        
        self.stepperAction()
        
        
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
    
    @IBAction func stepperGoOn(_ sender: UIButton) {
        

        self.stepperAction()
        
        stepper = stepper + 1
        pageControl.currentPage = stepper
        
    }
    
    
    @IBAction func stepperGoBack(_ sender: Any) {
        
        self.stepperAction()
        
        stepper = stepper - 1
        pageControl.currentPage = stepper
        
        
    }
    
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        print("Swipe gesture")
        
    }
    
    
    /// Making some Buttons Visible Step by Step
    func stepperAction() {
        
        switch stepper {
        case 0:
            lblInfo.isHidden = false
            btnInfo.isHidden = false
            lblCamera.isHidden = true
            btnCamera.isHidden = true
        case 1:
            lblInfo.isHidden = true
            btnInfo.isHidden = true
            btnCamera.isHidden = false
            lblCamera.isHidden = false
        case 2:
            lblAddContainers.isHidden = false
            btnAddContainer.isHidden = false
            lblCamera.isHidden = true
            btnCamera.isHidden = true
            
        //case 3:
            
        default:
            btnCamera.isHidden = false
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

