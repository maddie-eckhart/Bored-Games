//
//  WYRViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/10/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class WYRViewController: UIViewController {

//    let wouldYouKids = ["Eat ice cream for everyday for the rest of your life OR go to Disney World whenever you want","Be in school 24/7 OR do chores for the rest of your life", "Do the dishes OR do the laundry", ""]
//    let wouldYouTeens = ["Kiss Zac Efron OR kiss Troy Bolton","Vacation on a beach or in the city?"]
//    let wouldYouAdults = [""]
    
    let wouldYouKids = ["kids","kids","kids"]
    let wouldYouTeens = ["teen","teen","teen"]
    let wouldYouAdults = ["adult","adult","adult"]
    
    var wouldYouList: [String]?
    var group: Int?
    
    @IBAction func btnQuestionGenerator(_ sender: Any) {
        print("here")
        txtQuestion.text = getQuestion(ageGroup: wouldYouList!)
    }
    @IBOutlet weak var txtQuestion: UILabel!
    
    func getQuestion (ageGroup: [String]) -> String {
        let length = UInt32(ageGroup.count)
        let num = Int(arc4random_uniform(length))
        let question = ageGroup[num]
        return question
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let alert = UIAlertController(title: "Lets Play!", message: "Please select an age group", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Kids", style: .default, handler: {_ in self.wouldYouList = self.wouldYouKids}))
        alert.addAction(UIAlertAction(title: "Teens", style: .default, handler: {_ in self.wouldYouList = self.wouldYouTeens}))
        alert.addAction(UIAlertAction(title: "Adults", style: .default, handler: {_ in self.wouldYouList = self.wouldYouAdults}))
        self.present(alert, animated: true, completion: nil)

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
