//
//  ClassicsGridCell.swift
//  codeBlanch
//
//  Created by 조은이꺼 on 4/15/22.
//

import UIKit
import Parse

class ClassicsGridCell: UICollectionViewCell {
    
    
    @IBOutlet weak var menuLabel: UILabel!
    
    @IBOutlet weak var favBtn: UIButton!
    
    
    @IBOutlet weak var reviewBtn: UIButton!
    
    @IBAction func saveBtn(_ sender: Any) {
        favBtn.setImage(UIImage(named:"heart.fill"), for: . normal)
    }

// hmm
    
    @IBAction func writeReviewBtn(_ sender: reviewViewController) {
    }

}
