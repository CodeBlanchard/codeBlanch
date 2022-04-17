//
//  communityViewController.swift
//  codeBlanch
//
//  Created by Lucy Rosen on 3/29/22.
//

import UIKit
import Parse
import Kingfisher

class communityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let rateLabel = UILabel()
    
    var posts = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func viewDidAppear(_ animated: Bool) {
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        
        let post = posts[indexPath.row]
        
        
        let user = post["Author"] as! PFUser
        let profilePath = post["profileImage"] as! String
        let profileURL = URL(string: profilePath)
        
        cell.usernameLabel.text = user.username
        cell.profilePicture.kf.setImage(with: profileURL!)
        cell.profilePicture.layer.cornerRadius = 10.0
        
        cell.contentLabel.text = post["Review"] as! String
        
        if post["Rating"] != nil{
            let food = post["Food"] as! String
            let rating = post["Rating"] as! NSNumber
            cell.descripLabel.text = "left a \(rating) star rating on \(food)"
        } else{
            cell.descripLabel.text = "recommended a combination"
        }
    
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
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
