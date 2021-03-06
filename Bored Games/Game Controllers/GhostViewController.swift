//
//  GhostViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/9/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class GhostViewController: UIViewController {

    var alpha = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N",
                 "O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    let givenColor: UIColor = UIColor.red
    
    @IBAction func btnGenerator(_ sender: Any) {
        let num = Int(arc4random_uniform(25))
        txtLetter.text = alpha[num]
    }
    @IBOutlet weak var txtLetter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
