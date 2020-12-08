//
//  ModesViewController.swift
//  nikon photography tips
//
//  Created by hemanth on 22/07/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class ModesViewController: UIViewController {

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    

   
    // MARK: - Navigation

   override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Show the Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    @IBAction func hidebuttton(_ sender: UIButton) {
        
        let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "GalleryViewController") as? GalleryViewController
                      self.navigationController?.pushViewController(view!, animated: false)
    }
    
}
