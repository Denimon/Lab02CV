//
//  SkillsViewController.swift
//  Lab02CV
//
//  Created by Johan Kantola on 2019-11-05.
//  Copyright © 2019 Johan Kantola. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    
    @IBOutlet weak var TjohoLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonKlicked(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
              
            if self.TjohoLabel.frame.origin.y >= 0 && self.TjohoLabel.frame.origin.x >= -90 {
                self.TjohoLabel.frame.origin.y -= 50
                self.TjohoLabel.frame.origin.x -= 50
            }
            else{
            //self.TjohoLabel.frame.origin.y -= 50
               
                self.TjohoLabel.frame.origin.x += 50
            }
        }, completion: nil)
    }
    
    
    
    // Screen width.
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }

    // Screen height.
    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
}

