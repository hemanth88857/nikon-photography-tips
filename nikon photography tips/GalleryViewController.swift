//
//  GalleryViewController.swift
//  nikon photography tips
//
//  Created by H€m@Nt🅷  Ch€rRy on 09/07/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var mainview: UIView!
    
    @IBOutlet weak var circleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.mainview.layer.cornerRadius = 120
        self.mainview.clipsToBounds = true
        
        self.circleView.layer.cornerRadius = self.circleView.frame.size.height/2
        self.circleView.clipsToBounds = true

        
        // Do any additional setup after loading the view.
    }
    
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        // Hide the Navigation Bar
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        // Show the Navigation Bar
//        self.navigationController?.setNavigationBarHidden(false, animated: animated)
//    }
}
