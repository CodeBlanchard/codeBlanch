//
//  reviewViewController.swift
//  codeBlanch
//
//  Created by Lucy Rosen on 3/29/22.
//

import UIKit
import Parse
import Cosmos
import TinyConstraints

public class reviewViewController: UIViewController {
    
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var reviewTextView: UITextView!
    
    let post = PFObject(className: "Posts")
    
    lazy var cosmosView: CosmosView = {
        var view = CosmosView()

        view.settings.totalStars = 5
        view.settings.starSize = 17
        view.settings.starMargin = 3.3

        return view
    } ()
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(cosmosView)
        cosmosView.centerInSuperview()

        cosmosView.didTouchCosmos = { rating in
            //self.post["Rating"] = rating
        }
    }
    
    @IBAction func onSubmitBtn(_ sender: Any) {
        //let post = PFObject(className: "Posts")

        post["Food"] = titleTextView.text!
        post["Review"] = reviewTextView.text!
        post["Author"] = PFUser.current()!
        cosmosView.didTouchCosmos = { rating in
            self.post["Rating"] = rating
        }

        post.saveInBackground { (success, error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print ("Saved!")
            }else{
                print("error")
            }
        }
    }
    
    @IBAction func onCancelBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    public class func formatValue(_ value: Double) -> Int {
            print(Int(value))
            return Int(value)
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
