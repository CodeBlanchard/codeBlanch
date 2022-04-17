//
//  ComboViewController.swift
//  codeBlanch
//
//  Created by Lucy Rosen on 4/8/22.
//

import UIKit
import SwiftUI

class ComboViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var descripTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCancelBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSubmitBtn(_ sender: Any) {
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
