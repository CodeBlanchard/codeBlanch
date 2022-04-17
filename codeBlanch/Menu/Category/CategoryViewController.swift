//
//  CategoryViewController.swift
//  codeBlanch
//
//  Created by Sharon Kang on 4/15/22.
//

import UIKit
import Parse
import Kingfisher

class CategoryViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    var categories = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 0
        
        let width = view.frame.size.width / 2
        
        layout.itemSize = CGSize(width: width, height: width * 3 / 2)
        
//
//        self.collectionView.reloadData()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Stations")
        query.includeKey("sectionName")
        query.includeKey("image")
        query.limit = 20
        
        query.findObjectsInBackground { (categories, error) in
            if categories != nil{
                self.categories = categories!
                self.collectionView.reloadData()
            }
        }
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return categories.count
        }
        
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        
        let station = categories[indexPath.row]
        
        let stationPath = station["image"] as! String
        let stationURL = URL(string: stationPath)
        
        cell.categoryLabel.text = station["sectionName"] as? String
        cell.categoryImageView.kf.setImage(with: stationURL!)
            
        return cell
        
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let controller = storyboard.instantiateViewController(withIdentifier: "classicsViewController") as! classicsViewController
//           controller.selectedIndex = indexPath.row //pass selected cell index to next view.
        
        self.navigationController?.pushViewController(controller, animated: true)

        }


    }
    

 
