//
//  DishViewController.swift
//  codeBlanch
//
//  Created by 조은이꺼 on 4/15/22.
//

import UIKit
import Parse

class DishViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBAction func infoBtn(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://menu.mtholyoke.edu/label.aspx?sName=Mount+Holyoke+College+Dining+Services&locationNum=40&locationName=Classics&naFlag=1&WeeksMenus=This+Week%27s+Menus&RecNumAndPort=111838*4")! as URL, options: [:], completionHandler: nil)
    }
    @IBOutlet weak var infoBtn: UIButton!
    
//    var isCouponFav = UserDefaults.standard.bool(forKey: "isCouponFav")
    
    @IBOutlet weak var saveBtn: UIButton!
    
    @IBAction func saveDish(_ sender: Any) {
//        if isCouponFav {
//                let image = UIImage(named: "Heart_icon.png")
//            (sender as AnyObject).setImage(image, for: .normal)
//            } else {
//                let image = UIImage(named: "heart_icon_selected.png")
//                (sender as AnyObject).setImage(image, for: .normal)
//            }
//
//            isCouponFav = !isCouponFav
//            UserDefaults.standard.set(isCouponFav, forKey: "isCouponFav")
//            UserDefaults.standard.synchronize()
        
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var dish = [PFObject]()
//        let query = PFQuery(className: "Classics")
//
//        nameLabel.text = query["foodName"] as? String
//
//        descriptionLabel.text = query["ingredients"] as? String

        
    }

}
