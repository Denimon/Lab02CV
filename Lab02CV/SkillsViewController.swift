//
//  SkillsViewController.swift
//  Lab02CV
//
//  Created by Johan Kantola on 2019-11-05.
//  Copyright © 2019 Johan Kantola. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

  
    @IBOutlet weak var backImg: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backImg.alpha = 0
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 10, animations: {
            self.backButton.alpha = 1
        }) { (true) in
            self.backImg.alpha = 0.3
        }
    }

   

}
