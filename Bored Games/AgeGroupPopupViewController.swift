//
//  AgeGroupPopupViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/13/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class AgeGroupPopupViewController: UIViewController {

    @IBAction func btnKids(_ sender: Any) {
        self.view.removeFromSuperview()
        
    }
    @IBAction func btnTeens(_ sender: Any) {
    }
    @IBAction func btnAdults(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
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
