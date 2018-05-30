//
//  BackgroundsUIView.swift
//  Bored Games
//
//  Created by Madeline Eckhart on 5/19/18.
//  Copyright © 2018 MaddGaming. All rights reserved.
//

import UIKit

class BackgroundsUIView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    var givenColor: UIColor?
    
    func setColor(color: UIColor) {
        givenColor = color
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 240))
        givenColor?.setFill()
        path.fill()
    }
    

}
