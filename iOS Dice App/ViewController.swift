//
//  ViewController.swift
//  dicee
//
//  Created by iOS DEV on 11/09/19.
//  Copyright © 2019 iOS DEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    let diceName=["dice1","dice2","dice3","dice4","dice5","dice6"]
    var indexOne=0
    var indexTwo=0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func goButton(_ sender: Any) {
        print("Android app dev")
        indexOne=Int(arc4random_uniform(6))
        indexTwo=Int(arc4random_uniform(6))
        print("random number 1: \(indexOne)")
        print("random number 2: \(indexTwo)")
        dice1.image=UIImage(named:diceName[indexOne])
        dice2.image=UIImage(named:diceName[indexTwo])
    }

}

