//
//  CategoriesCell.swift
//  codeBlanch
//
//  Created by Sharon Kang on 4/3/22.
//

import UIKit

class CategoriesCell: UITableViewCell {
    
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

