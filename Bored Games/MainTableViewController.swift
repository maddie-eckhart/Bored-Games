//
//  MainTableViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 6/12/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    //***********
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
   
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        // adding container view
        let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        containerView.tag = 9999
        containerView.isUserInteractionEnabled = false
    }
    //----------------------------------------------- Table View -----------------------------------------------//
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
