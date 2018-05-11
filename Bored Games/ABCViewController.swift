//
//  ABCViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/9/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class ABCViewController: UIViewController {

    let list = ["Breakfast Food","Food","Snack Foods", "Drinks", "Alcoholic Beverages","Flowers", "Countries", "Movie titles","Song Titles", "Celebrities (First and Last names)", "Shapes and Colors", "Animals", "Emotions", "Musical Instruments", "Companies", "Occupations", "Things You Can Wear", "School Supplies", "Desserts", "Stores", "Modes of Transportation", "Curses", "Slang Phrases"]
    
    
    @IBAction func btnGetCategory(_ sender: Any) {
        let num = Int(arc4random_uniform(22))
        txtCategory.text = list[num]
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
