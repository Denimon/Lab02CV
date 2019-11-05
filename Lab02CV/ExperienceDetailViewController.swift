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
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var FromToLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text? = nameFromPrep
        FromToLabel.text? = fromToFromPrep
        imageView.image = UIImage(named: imageFromPrep)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
