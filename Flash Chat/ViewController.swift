//
//  ViewController.swift
//  flashChat
//
//  Created by Sarvad shetty on 9/15/19.
//  Copyright © 2019 Sarvad shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    //set variables
    //set images
    var profileImages=["person1","person2","person3","person4","person5"]
    
    //set profile name
    var profileNames=["name1","name2","name3","name4","name5"]
    //set last message
    var profileMessages=["Hey","Hi","Hello","Bye","Take care"]
    
    //set tableview iboutlet
    
    @IBOutlet weak var chatTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set delegate
        chatTable.delegate=self
        //set datasource
        chatTable.dataSource=self
        
    }


    //tableview functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return number of cells
        return profileImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //set cell
        let cell = chatTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChatTableViewCell
        
        //set image
        
        //circular image
        
        //set name
        
        //set last message
        cell.dp.image=UIImage(named:profileImages[indexPath.row])
        cell.name.text=profileNames[indexPath.row]
        cell.message.text=profileMessages[indexPath.row]
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

