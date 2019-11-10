//
//  SkillsViewController.swift
//  Lab02CV
//
//  Created by Johan Kantola on 2019-11-05.
//  Copyright © 2019 Johan Kantola. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLabel.alpha = 0
        closeButton.alpha = 0
        
    }
   
    @IBAction func closeButtonKlicked(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 3, animations: {
            self.imageLabel.alpha = 1

            self.imageLabel?.transform = CGAffineTransform(scaleX: 5, y: 5)
        }) { (True) in
            self.closeButton.alpha = 1
        }
    }
}

