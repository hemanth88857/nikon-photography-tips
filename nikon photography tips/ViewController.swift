//
//  ViewController.swift
//  nikon photography tips
//
//  Created by H€m@Nt🅷  Ch€rRy on 09/07/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var homeBtnOutlet: UIButton!
    @IBOutlet weak var settingsBtnOutlet: UIButton!
    @IBOutlet weak var galleryBtnOutlet: UIButton!
     @IBOutlet weak var modesBtnOutlet: UIButton!
    @IBOutlet weak var pixcelBtnOutlet: UIButton!

    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.curveview()
        
        
        // Do any additional setup after loading the view.
    }


    func curveview(){
        
        self.homeBtnOutlet.layer.cornerRadius = 25
        self.settingsBtnOutlet.layer.cornerRadius = 25
        self.galleryBtnOutlet.layer.cornerRadius = 25
         self.modesBtnOutlet.layer.cornerRadius = 25
        self.pixcelBtnOutlet.layer.cornerRadius = 25

        self.view1.layer.cornerRadius = 25
        self.view2.layer.cornerRadius = 25
        self.view3.layer.cornerRadius = 25
        self.view4.layer.cornerRadius = 25
        self.view5.layer.cornerRadius = 25


    }
    //MARK: navigation
    
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
    
  
    
    @IBAction func homeBtnActn(_ sender: UIButton) {
        let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "homeViewController") as? homeViewController
               self.navigationController?.pushViewController(view!, animated: false)
    }
    @IBAction func settingBtnActn(_ sender: UIButton) {
          let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "SettingViewController") as? SettingViewController
          self.navigationController?.pushViewController(view!, animated: false)
      }
    
    @IBAction func galleryBtnActn(_ sender: UIButton) {
        let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "GalleryViewController") as? GalleryViewController
               self.navigationController?.pushViewController(view!, animated: false)
      }
    
     @IBAction func modesBtnActn(_ sender: UIButton) {
        let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "ModesViewController") as?
        ModesViewController
                      self.navigationController?.pushViewController(view!, animated: false)
        
    }
    
    @IBAction func pixcelBtnActn(_ sender: UIButton) {
          let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "PixcelCalViewController") as? PixcelCalViewController
          self.navigationController?.pushViewController(view!, animated: false)
      }
      
}

