//
//  MainTableViewController.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 6/12/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    //----------------------------------------------- View Before Loading -----------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        // adding container view
        let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        containerView.backgroundColor = UIColor.white
        
        // adding images
        let imageView = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 50.0, height: 60.0))
        imageView.image = UIImage(named: "cloud1")
        
        let imageView2 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 100.0, height: 90.0))
        imageView2.image = UIImage(named: "cloud2")
        
        let imageView3 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 70.0, height: 50.0))
        imageView3.image = UIImage(named: "cloud3")
        
        let imageView4 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 70.0, height: 80.0))
        imageView4.image = UIImage(named: "cloud4")
       
        // adding images to view
        containerView.addSubview(imageView)
        containerView.addSubview(imageView2)
        containerView.addSubview(imageView3)
        containerView.addSubview(imageView4)

        tableView.backgroundView = containerView
        
        // animate images
        animateBackground(cloud: imageView, duration: getSpeed())
        animateBackground(cloud: imageView2, duration: getSpeed())
        animateBackground(cloud: imageView3, duration: getSpeed())
        animateBackground(cloud: imageView4, duration: getSpeed())


    }
    //----------------------------------------------- Table View -----------------------------------------------//
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
    //----------------------------------------------- Auxillary Functions -----------------------------------------------//
    
    func getPosition() -> CGFloat {
        
        let num: CGFloat = CGFloat(arc4random_uniform(UInt32(UIScreen.main.bounds.height)))
        return num
    }
    
    func getSpeed() -> CGFloat {
        
        let num: CGFloat = CGFloat(arc4random_uniform(UInt32(20)))
        return num
    }
    
    func animateBackground(cloud: UIImageView, duration: CGFloat) {
        
        UIView.animate(withDuration: TimeInterval(duration), delay: 0.0, options: .curveLinear, animations: {
            cloud.frame.origin.x = -cloud.frame.size.width
        }, completion: {_ in
            cloud.frame.origin.x = self.view.frame.size.width
            self.animateBackground(cloud: cloud, duration: self.getSpeed())
        })
        
    }
    
    //----------------------------------------------- View After Loading -----------------------------------------------//
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


}
