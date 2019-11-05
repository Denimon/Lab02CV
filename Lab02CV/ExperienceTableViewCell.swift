//
//  ExperienceTableViewCell.swift
//  Lab02CV
//
//  Created by Johan Kantola on 2019-11-04.
//  Copyright © 2019 Johan Kantola. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {
 
    @IBOutlet weak var ExperienceImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var FromToLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
}
