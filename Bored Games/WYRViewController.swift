//
//  WYRViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/10/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class WYRViewController: UIViewController, AgeGroupViewControllerDelegate {

    let wouldYouKids = ["Eat ice cream for everyday for the rest of your life OR go to Disney World whenever you want","Be in school 24/7 OR do chores for the rest of your life", "Do the dishes OR do the laundry", ""]
    let wouldYouTeens = ["Kiss Zac Efron OR kiss Troy Bolton","Vacation on a beach or in the city?"]
    let wouldYouAdults = [""]
    
    var wouldYouList: [String]?
    
    
    @IBAction func btnQuestionGenerator(_ sender: Any) {
        print("here")
        txtQuestion.text = getQuestion(ageGroup: wouldYouList!)
    }
    @IBOutlet weak var txtQuestion: UILabel!
    
    func getGroup (group: Int) {
        switch group {
        case 1:   // kids
            wouldYouList = wouldYouKids
        case 2:   // teens
            wouldYouList = wouldYouTeens
        case 3:   // adults
            wouldYouList = wouldYouAdults
        default:
            wouldYouList = ["test"]
        }
    }
    
    func getQuestion (ageGroup: [String]) -> String {
        let length = UInt32(ageGroup.count)
        let num = Int(arc4random_uniform(length))
        let question = ageGroup[num]
        return question
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let showPopup = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ageGroup") as! AgeGroupPopupViewController
        self.addChildViewController(showPopup)
        showPopup.view.frame = self.view.frame
        self.view.addSubview(showPopup.view)
        showPopup.didMove(toParentViewController: self)
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
