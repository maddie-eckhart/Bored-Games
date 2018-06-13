//
//  AgeGroupPopupViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/13/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

protocol AgeGroupViewControllerDelegate{
    func getGroup (group: Int)
}

class AgeGroupPopupViewController: UIViewController {

    var delegate: AgeGroupViewControllerDelegate?
    var groupToSave: Int?
    
    // transferring chosen age group to wyr controller
    @IBAction func btnKids(_ sender: Any) {
        groupToSave = 1
        delegate?.getGroup(group: groupToSave!)
        //self.dismiss(animated: true, completion: nil)
        self.view.removeFromSuperview()
    }
    @IBAction func btnTeens(_ sender: Any) {
        groupToSave = 2
    }
    @IBAction func btnAdults(_ sender: Any) {
        groupToSave = 3
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
