//
//  foodCell.swift
//  HomeChef
//
//  Created by Julio Hernandez-Duran on 1/23/16.
//  Copyright © 2016 Jiaqi Wu. All rights reserved.
//

import UIKit

class foodCell: UITableViewCell {

    @IBOutlet weak var receiptLabel: UILabel!
    @IBOutlet weak var recipeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
