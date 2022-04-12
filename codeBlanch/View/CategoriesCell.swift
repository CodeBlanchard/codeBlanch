//
//  CategoriesCell.swift
//  CodeBlanch
//
//  Created by sulagna on 4/2/22.
//  Copyright © 2022 Ines Belkhodja. All rights reserved.
//

import UIKit
import Parse

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    
    @IBAction func nextButton(_ sender: Any) {
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
