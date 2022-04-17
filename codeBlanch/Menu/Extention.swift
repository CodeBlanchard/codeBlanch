//
//  Extention.swift
//  codeBlanch
//
//  Created by 조은이꺼 on 4/16/22.
//

import UIKit

extension DishViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
