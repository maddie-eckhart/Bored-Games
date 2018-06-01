//
//  ABCViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/9/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class ABCViewController: UIViewController {

    let list = ["Alcoholic Beverages","Animals","Breakfast Food","Celebrities (First and Last names)!","Companies", "Countries","Curses","Desserts","Drinks","Emotions","Flowers","Food","Modes of Transportation","Movie titles!","Musical Instruments","Occupations!","Restaurants","School Supplies","Shapes and Colors","Slang Phrases","Snack Foods","Song Titles", "Stores","Things You Can Wear"]
    
    
    @IBAction func btnGetCategory(_ sender: Any) {
        let num = Int(arc4random_uniform(22))
        txtCategory.text = list[num]
    }
    
    @IBOutlet weak var txtCategory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = BackgroundsUIView.self
        
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
