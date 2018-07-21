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
        
        let imageView4 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 50.0, height: 40.0))
        imageView4.image = UIImage(named: "cloud4")
        
        let imageView5 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 80.0, height: 80.0))
        imageView5.image = UIImage(named: "cloud5")
        
        let imageView6 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 130.0, height: 80.0))
        imageView6.image = UIImage(named: "cloud6")
        
        let imageView7 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 70.0, height: 80.0))
        imageView7.image = UIImage(named: "cloud7")
        
        let imageView8 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 70.0, height: 80.0))
        imageView8.image = UIImage(named: "cloud8")
        
        let imageView9 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width, y: getPosition(), width: 40.0, height: 30.0))
        imageView9.image = UIImage(named: "cloud9")
       
        // adding images to view
        containerView.addSubview(imageView)
        containerView.addSubview(imageView2)
        containerView.addSubview(imageView3)
        containerView.addSubview(imageView4)
        containerView.addSubview(imageView5)
        containerView.addSubview(imageView6)
        containerView.addSubview(imageView7)
        containerView.addSubview(imageView8)
        containerView.addSubview(imageView9)
        
        tableView.backgroundView = containerView
        
        // animate images
        animateBackground(cloud: imageView, duration: getSpeed())
        animateBackground(cloud: imageView2, duration: getSpeed())
        animateBackground(cloud: imageView3, duration: getSpeed())
        animateBackground(cloud: imageView4, duration: getSpeed())
        animateBackground(cloud: imageView5, duration: getSpeed())
        animateBackground(cloud: imageView6, duration: getSpeed())
        animateBackground(cloud: imageView7, duration: getSpeed())
        animateBackground(cloud: imageView8, duration: getSpeed())
        animateBackground(cloud: imageView9, duration: getSpeed())

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
        
        let num: CGFloat = CGFloat(arc4random_uniform(UInt32(40)))
        return num
    }
    
    func animateBackground(cloud: UIImageView, duration: CGFloat) {
        
        UIView.animate(withDuration: TimeInterval(duration), delay: 0.0, options: .curveLinear, animations: {
            cloud.frame.origin.x = -cloud.frame.size.width
            cloud.frame.origin.y = self.getPosition()
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
    
}
