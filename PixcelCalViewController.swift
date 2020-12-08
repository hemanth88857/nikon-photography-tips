//
//  PixcelCalViewController.swift
//  nikon photography tips
//
//  Created by hemanth on 05/08/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class PixcelCalViewController: UIViewController {
    
    
    @IBOutlet weak var pixcelsOutlet: UIButton!
    @IBOutlet weak var cmsOutlet: UIButton!
    @IBOutlet weak var inchesOutlet: UIButton!
    @IBOutlet weak var ftOutlet: UIButton!
    
    @IBOutlet weak var converttype: UILabel!
    
    
    @IBOutlet weak var viw2widConstrain: NSLayoutConstraint!
    
    
    
    
    
    
    
    @IBOutlet weak var widthTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
    
    //pixcels
    @IBOutlet weak var pixcelWdthLbl: UILabel!
    @IBOutlet weak var pixcelHtLbl: UILabel!
    
    //Cms
    @IBOutlet weak var cmWdthLbl: UILabel!
    @IBOutlet weak var cmHtLbl: UILabel!
    
    //Inches
    @IBOutlet weak var inchWdthLbl: UILabel!
    @IBOutlet weak var inchHtLbl: UILabel!
    
    //feet
    @IBOutlet weak var ftlWdthLbl: UILabel!
    @IBOutlet weak var ftHtLbl: UILabel!
    
    //Mm
    @IBOutlet weak var mmWdthLbl: UILabel!
    @IBOutlet weak var mmHtLbl: UILabel!
    
    @IBOutlet weak var stackview1: UIStackView!
    @IBOutlet weak var stack1: UIStackView!
    
    
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    
     @IBOutlet weak var view5: UIView!
     @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!

    
    
    
    
    
    
    // MARK:viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.converttype.text = "pixcels"
        self.setupToolbar()
       
        
        
        self.view1.layer.cornerRadius = 20
        self.view2.layer.cornerRadius = 20
        self.view3.layer.cornerRadius = 20
        self.view4.layer.cornerRadius = 20

        self.view1.clipsToBounds = true
        self.view2.clipsToBounds = true
        self.view3.clipsToBounds = true
        self.view4.clipsToBounds = true
        
//        self.view5.isHidden = false
        self.view6.isHidden = true
        self.view7.isHidden = true
        self.view8.isHidden = true
    }
    
    func setupToolbar(){
        //Create a toolbar
        let bar = UIToolbar()
        //Create a done button with an action to trigger our function to dismiss the keyboard
        let doneBtn = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissMyKeyboard))
        //Create a felxible space item so that we can add it around in toolbar to position our done button
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        //Add the created button items in the toobar
        bar.items = [flexSpace, flexSpace, doneBtn]
        bar.sizeToFit()
        //Add the toolbar to our textfield
        widthTF.inputAccessoryView = bar
        heightTF.inputAccessoryView = bar
    }
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }
    
    
    
    @IBAction func button1(_ sender: UIButton) {
        self.view5.isHidden = false
        self.view6.isHidden = true
        self.view7.isHidden = true
        self.view8.isHidden = true
    }
    @IBAction func button2(_ sender: UIButton) {
       // viw2widConstrain.constant = 100
        self.view6.isHidden = false
        self.view5.isHidden = true
        self.view7.isHidden = true
        self.view8.isHidden = true
       }
    @IBAction func button3(_ sender: UIButton) {
        self.view7.isHidden = false
        self.view6.isHidden = true
        self.view5.isHidden = true
        self.view8.isHidden = true
       }
    @IBAction func button4(_ sender: UIButton) {
        self.view8.isHidden = false
        self.view6.isHidden = true
        self.view7.isHidden = true
        self.view5.isHidden = true
       }
    
    
    
    
    
    @IBAction func calBtn(_ sender: UIButton) {
        
        
        if self.converttype.text == "cms" {
            //MARK:inch
            
            // cms to inches
            let cm_inch = 0.393701
            let textfieldInt5: Double? = Double(widthTF.text!)
            let textfieldInt6: Double? = Double(heightTF.text!)
            
            let  inchW = Double(textfieldInt5!) * cm_inch
            let  inchH = Double(textfieldInt6!) * cm_inch
            
            self.inchWdthLbl.text = String(format:"%.2f",inchW)
            self.inchHtLbl.text = String(format:"%.2f",inchH)
            
            
            // cms to pixcel
            let cm_pixcel = 118.110236
            
            
            let textfieldInt: Double? = Double(widthTF.text!)
            let textfieldInt2: Double? = Double(heightTF.text!)
            let  p1:Double? = Double(cm_pixcel)
            
            var p3 = (textfieldInt!*p1!)
            var p4 = (textfieldInt2!*p1!)
            p3.round()
            p4.round()
            
            self.pixcelWdthLbl.text = String(format:"%.f",p3)
            self.pixcelHtLbl.text = String(format:"%.f",p4)
            
            
            // cms to cms
            let textfieldInt3: Double? = Double(widthTF.text!)
            let textfieldInt4: Double? = Double(heightTF.text!)
            self.cmWdthLbl.text = String(format:"%.f",textfieldInt3!)
            self.cmHtLbl.text = String(format:"%.f",textfieldInt4!)
            
            // cms to ft
            
            let cm_feet = 0.0328084
            let textfieldInt7: Double? = Double(self.widthTF.text!)
            let textfieldInt8: Double? = Double(self.heightTF.text!)
            
            let  feetW = Double(textfieldInt7!) * cm_feet
            let  feetH = Double(textfieldInt8!) * cm_feet
            
            
            self.ftlWdthLbl.text = String(format:"%.2f",feetW)
            self.ftHtLbl.text = String(format:"%.2f",feetH)
            
        } else if  self.converttype.text == "inches" {
            //MARK:inch
            
            // inch to inch
            let textfieldInt3: Double? = Double(widthTF.text!)
            let textfieldInt4: Double? = Double(heightTF.text!)
            self.inchWdthLbl.text = String(textfieldInt3!)
            self.inchHtLbl.text = String(textfieldInt4!)
            
            
            //  inch to pixcel
            
            let in_pixcel = 300
            
            
            let textfieldInt: Double? = Double(widthTF.text!)
            let textfieldInt2: Double? = Double(heightTF.text!)
            let  p1:Double? = Double(in_pixcel)
            
            let p3 = (textfieldInt!*p1!)
            let p4 = (textfieldInt2!*p1!)
            //   p3.round()
            // p4.round()
            
            self.pixcelWdthLbl.text = String(format:"%.f",p3)
            self.pixcelHtLbl.text = String(format:"%.f",p4)
            
            
            // inch to cms
            let inch_cm = 2.54
            let textfieldInt5: Int? = Int(widthTF.text!)
            let textfieldInt6: Int? = Int(heightTF.text!)
            
            let  inchW = Double(textfieldInt5!) * inch_cm
            let  inchH = Double(textfieldInt6!) * inch_cm
            
            self.cmWdthLbl.text = String(format:"%.2f",inchW)
            self.cmHtLbl.text = String(format:"%.2f",inchH)
            
            // inch to ft
            
            let in_feet = 0.00833333
            let textfieldInt7: Double? = Double(self.widthTF.text!)
            let textfieldInt8: Double? = Double(self.heightTF.text!)
            
            let  feetW = Double(textfieldInt7!) * in_feet
            let  feetH = Double(textfieldInt8!) * in_feet
            
            
            self.ftlWdthLbl.text = String(format:"%.2f",feetW)
            self.ftHtLbl.text = String(format:"%.2f",feetH)
            
        } else if  self.converttype.text == "ft" {
            //MARK:ft
            // ft to ft
            let textfieldInt3: Double? = Double(widthTF.text!)
            let textfieldInt4: Double? = Double(heightTF.text!)
            self.ftlWdthLbl.text = String(format:"%.f",textfieldInt3!)
            self.ftHtLbl.text = String(format:"%.f",textfieldInt4!)
            
            
            //  ft to pixcel
            
            let ft_pixcel = 3600
            
            
            
            let textfieldInt: Double? = Double(widthTF.text!)
            let textfieldInt2: Double? = Double(heightTF.text!)
            let  p1:Double? = Double(ft_pixcel)
            
            let p3 = (textfieldInt!*p1!)
            let p4 = (textfieldInt2!*p1!)
            //   p3.round()
            // p4.round()
            
            self.pixcelWdthLbl.text = String(format:"%.f",p3)
            self.pixcelHtLbl.text = String(format:"%.f",p4)
            
            
            // ft to cms
            let ft_cm = 30.48
            let textfieldInt5: Int? = Int(widthTF.text!)
            let textfieldInt6: Int? = Int(heightTF.text!)
            
            let  cmW = Double(textfieldInt5!) * ft_cm
            let  cmH = Double(textfieldInt6!) * ft_cm
            
            self.cmWdthLbl.text = String(format:"%.2f",cmW)
            self.cmHtLbl.text = String(format:"%.2f",cmH)
            
            // ft to inch
            
            let  in_feet = 12
            let textfieldInt7: Int? = Int(self.widthTF.text!)
            let textfieldInt8: Int? = Int(self.heightTF.text!)
            
            let  feetW = Int(textfieldInt7!) * in_feet
            let  feetH = Int(textfieldInt8!) * in_feet
            
            
            self.inchWdthLbl.text = String(format:"%.2f",feetW)
            self.inchHtLbl.text = String(format:"%.2f",feetH)
            
        } else {
            //MARK:PIXCEL
            
            
            // pixcels to pixcel
            let textfieldInt3: Double? = Double(widthTF.text!) ?? 300.0
            let textfieldInt4: Double? = Double(heightTF.text!) ?? 300.0
            self.pixcelWdthLbl.text = String(format:"%.f",textfieldInt3!)
            self.pixcelHtLbl.text = String(format:"%.f",textfieldInt4!)
            
            print(pixcelHtLbl!)
            
            //  pixcel to cms
            
            let pixcel_cm = 0.008466667
            
            
            let textfieldInt: Double? = Double(widthTF.text!)
            let textfieldInt2: Double? = Double(heightTF.text!)
            let  p1:Double? = Double(pixcel_cm)
            
            let p3 = (textfieldInt!*p1!)
            let p4 = (textfieldInt2!*p1!)
            //  p3.round(.toNearestOrEven)
            //  p4.round(.toNearestOrEven)
            
            
            
            
            self.cmWdthLbl.text = String(format:"%.2f",p3)
            self.cmHtLbl.text = String(format:"%.2f",p4)
            
            
            // pixcel to inches
            let pixcel_inch = 0.0033333
            let textfieldInt5: Int? = Int(widthTF.text!)
            let textfieldInt6: Int? = Int(heightTF.text!)
            
            let  pixW = Double(textfieldInt5!) * pixcel_inch
            let  pixH = Double(textfieldInt6!) * pixcel_inch
            
            
            self.inchWdthLbl.text = String(format:"%.2f",pixW)
            self.inchHtLbl.text = String(format:"%.2f",pixH)
            
            // pixcel to ft
            
            let pixcel_feet = 0.0008680556
            let textfieldInt7: Double? = Double(self.widthTF.text!)
            let textfieldInt8: Double? = Double(self.heightTF.text!)
            
            var  feetW = Double(textfieldInt7!) * pixcel_feet
            var  feetH = Double(textfieldInt8!) * pixcel_feet
            
            // feetW.round(.toNearestOrEven)
            //  feetH.round(.toNearestOrEven)
            self.ftlWdthLbl.text = String(format:"%.3f",feetW)
            self.ftHtLbl.text = String(format:"%.3f",feetH)
            
        }
        
        
        
        
        
        
        
        
        
    }
    
    
    
    @IBAction func ClearBtn(_ sender: UIButton) {
        
        self.widthTF.text = ""
        self.heightTF.text = ""
        
    }
    
    
    @IBAction func pixcelBtn(_ sender: UIButton) {
        self.converttype.text = "pixcels"
        
        
    }
    
    @IBAction func cmsBtn(_ sender: UIButton) {
        self.converttype.text = "cms"
        
        
        self.mmWdthLbl.isHidden = true
        self.mmHtLbl.isHidden = false
        
    }
    
    @IBAction func inchesBtn(_ sender: UIButton) {
        self.converttype.text = "inches"
        
        
        self.mmWdthLbl.isHidden = false
        self.mmHtLbl.isHidden = true
        
    }
    
    @IBAction func ftBtn(_ sender: UIButton) {
        self.converttype.text = "ft"
        
    }
    
    
    
    
}
