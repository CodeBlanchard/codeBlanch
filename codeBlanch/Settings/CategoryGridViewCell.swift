//
//  CategoryGridViewCell.swift
//  codeBlanch
//
//  Created by 조은이꺼 on 4/15/22.
//

import UIKit
import Kingfisher

class CategoryGridViewCell: UICollectionViewCell {
    
    static let indentifier = String(describing: CategoryGridViewCell.self)
    
    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    func setup (category: DishCategory) {
        
        categoryLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
        
    }
    
    
}
