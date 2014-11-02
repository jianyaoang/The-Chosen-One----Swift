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
        
        self.revealButton.addTarget(self, action: "revealTheChosenOne", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


    func revealTheChosenOne(){
        self.theImageView.image = UIImage(named:"harrypotter")
        self.theChosenOneLabel.alpha = 1
    }
}

