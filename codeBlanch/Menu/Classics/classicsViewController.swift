//
//  classicsViewController.swift
//  codeBlanch
//
//  Created by Sharon Kang on 4/15/22.
//

import UIKit
import Parse
import Cosmos
import TinyConstraints

class classicsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
//    lazy var cosmosView: CosmosView = {
//        var view = CosmosView()
//
//        view.settings.totalStars = 5
//        view.settings.starSize = 17
//        view.settings.starMargin = 3.3

//        return view
//    } ()
//    
    var dishes = [PFObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.minimumLineSpacing = 7
//        layout.minimumInteritemSpacing = 3

        let width = view.frame.size.width / 2.2
        layout.itemSize = CGSize(width: width, height: width * 2 / 3)

        
//        view.addSubview(cosmosView)
//        cosmosView.centerInSuperview()
//
//        cosmosView.didTouchCosmos = { rating in
//        }
    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            
        let query = PFQuery(className: "Classics")
        query.includeKey("foodName")
        query.limit = 30
            
        query.findObjectsInBackground { (dishes, error) in
            if dishes != nil{
                self.dishes = dishes!
                self.collectionView.reloadData()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return dishes.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClassicsGridCell", for: indexPath) as! ClassicsGridCell
        
        let cuisine = dishes[indexPath.row]
        
        cell.menuLabel.text = cuisine["foodName"] as? String
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1.0
        cell.layer.cornerRadius = 5.0
        
        return cell
        
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let controller = storyboard.instantiateViewController(withIdentifier: "DishViewController") as! DishViewController
            
//         controller.selectedIndex = indexPath.row //pass selected cell index to next view.
        
        self.navigationController?.present(controller, animated: true, completion: nil)
//        self.navigationController?.pushViewController(controller, animated: true)
    
    }
    
}
