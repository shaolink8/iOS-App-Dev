//
//  ViewController.swift
//  Magic-8-ball-app
//
//  Created by iOS DEV on 14/09/19.
//  Copyright © 2019 iOS DEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var image1: UIImageView!
    
    let ballImages=["ball1","ball2","ball3","ball4","ball5","ball6"]
    
    var ballIndex=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1(_ sender: Any) {
    ballIndex=Int(arc4random_uniform(5))
        image1.image=UIImage(named:ballImages[ballIndex])
        
    }
    
}

