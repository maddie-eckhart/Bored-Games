//
//  TruthsAndLiesViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/10/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class TruthsAndLiesViewController: UIViewController {

    let categories = ["Accomplishments", "Forgeign languages", "Childhood and Family", "Sports", "Do you have any cool memoribilia?", "School", "Pet Peeves", "Allergies", "What do you do in your free time?", "Travel", "Met any Celebrities?"]
    
    @IBAction func btnGetCategory(_ sender: Any) {
        let num = Int(arc4random_uniform(25))
        txtCategory.text = categories[num]
    }
    
    @IBOutlet weak var txtCategory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
