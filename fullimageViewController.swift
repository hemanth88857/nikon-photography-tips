//
//  fullimageViewController.swift
//  nikon photography tips
//
//  Created by hemanth on 24/07/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class fullimageViewController: UIViewController {

    @IBOutlet weak var fullimage: UIImageView!
    
    var fullImageView = UIImage()
    var fullimagetest = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       // self.fullimage.image = fullImageView
      //  let otherVc = homeViewController()

        
        self.fullimage.image = fullImageView

        // Do any additional setup after loading the view.
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
