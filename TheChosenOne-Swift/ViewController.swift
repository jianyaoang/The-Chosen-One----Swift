//
//  ViewController.swift
//  TheChosenOne-Swift
//
//  Created by Jian Yao Ang on 11/2/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var theImageView: UIImageView!
    @IBOutlet var revealButton: UIButton!
    @IBOutlet var theChosenOneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.theChosenOneLabel.alpha = 0
        self.theImageView.alpha = 0
        
        self.revealButton.addTarget(self, action: "revealTheChosenOne", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


    func revealTheChosenOne(){
        
        UIView.animateWithDuration(10.0, delay: 0.0, options: .CurveLinear, animations:{
            self.theImageView.image = UIImage(named:"harrypotter")
            self.theImageView.alpha = 1
            self.theChosenOneLabel.alpha = 1
            }, completion:{
            finished in println("animation ends")
        })
    }
}

