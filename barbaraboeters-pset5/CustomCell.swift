//
//  CustomCell.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 02-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
