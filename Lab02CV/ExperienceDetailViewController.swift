//
//  ExperienceDetailViewController.swift
//  Lab02CV
//
//  Created by Johan Kantola on 2019-11-05.
//  Copyright © 2019 Johan Kantola. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {

    var nameFromPrep: String = ""
    var fromToFromPrep: String = ""
    var imageFromPrep: String = ""
    var descriptionFromPrep: String = ""
    var informationFromPrep: String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var fromToLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        nameLabel.text? = nameFromPrep
        descriptionLabel.text? = descriptionFromPrep
        fromToLabel.text? = fromToFromPrep
        imageView.image = UIImage(named: imageFromPrep)
        informationLabel.text? = informationFromPrep
        
    }
}
