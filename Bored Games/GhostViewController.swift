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
    
    override func viewDidAppear(_ animated: Bool) {
         /*let view = BackgroundsUIView()
        view.setColor(color: UIColor.blue)
       super.viewDidAppear(animated)
        let width = UIScreen.main.bounds.size.width
        let height = 243
        
        let rectangle: CGRect = CGRect(x: 0, y: 0, width: Int(width), height: height)

        view.draw(rectangle)
        */
        
    }
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
