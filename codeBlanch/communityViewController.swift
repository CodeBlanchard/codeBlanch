//
//  communityViewController.swift
//  codeBlanch
//
//  Created by Lucy Rosen on 3/29/22.
//

import UIKit
import Parse

public class communityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let rateLabel = UILabel()
    
    var posts = [PFObject]()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //let comboVC = ComboViewController()
//        if (AppDelegate.appDelegate().comboVC.descripTextView.text != "Items in combo"){
//            //rateLabel.frame = CGRect(x: 16, y: 16, width: 100, height: 50)
//            rateLabel.text = "It worked!"
//        }

    }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Posts")
        query.includeKeys(["Author", "Review", "Food", "Rating"])
        query.limit = 20
        
        query.findObjectsInBackground { (posts, error) in
            if posts != nil{
                self.posts = posts!
                self.tableView.reloadData()
            }
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        
        let post = posts[indexPath.row]
        
        
//        if (post["Review"] as! String != "Write a review..."){
//            print ("It worked!")
//        }
        
        let user = post["Author"] as! PFUser
        cell.usernameLabel.text = user.username
        cell.contentLabel.text = post["Review"] as! String
        
        if post["Rating"] != nil{
        let food = post["Food"] as! String
        let rating = post["Rating"] as! NSNumber
        cell.descripLabel.text = "left a \(rating) star rating on \(food)"
        } else{
            cell.descripLabel.text = "recommended a combination"
        }
        //cell.descripLabel.text = "left a \(rating) star review on \(food)"
        
        return cell
    }
    
    
    @IBAction func addBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let viewController = storyboard.instantiateViewController(withIdentifier: "addViewController")
               
               if let presentationController = viewController.presentationController as? UISheetPresentationController {
                   presentationController.detents = [.medium()]
               }
               
               self.present(viewController, animated: true)
    }
    
//    public func didTouchCosmos(_ rating: Double) {
//            rateLabel.text = "\(reviewViewController.formatValue(rating))"
//        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
