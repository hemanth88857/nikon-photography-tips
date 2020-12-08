//
//  SettingViewController.swift
//  nikon photography tips
//
//  Created by H€m@Nt🅷  Ch€rRy on 09/07/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    
    var mineSpillere2 = [String]()
    var numberArr = [Int]()
    var tnameArr = [String]()
    var tadressArr = [String]()
    var temailArr = [String]()
    var numberInt : Int!
    var fullStr : String!
    
    
    
    @IBOutlet weak var personsTF: UITextField!
    
    @IBOutlet weak var personsTableview: UITableView!
    
    @IBOutlet weak var tableconstarin: NSLayoutConstraint!
    @IBOutlet weak var viewheight: NSLayoutConstraint!
    
    
//    var tnameArr = [String]()
//    var tadrressArr = [String]()
//    var temailArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  settingcolllectionView.delegate = self
        //settingcolllectionView.dataSource = self
        personsTableview.delegate = self
        personsTableview.dataSource = self
        self.personsTF.delegate = self
        
        

        let otherVc = homeViewController()
        mineSpillere2 = otherVc.chartsImages
      self.setupToolbar()


        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation
    
    
    
    
    func tablegencell(){
        
        numberArr = [Int]()
        
        numberInt = Int(personsTF.text!)
      //  print(numberInt!)
        
        if personsTF.text != "0" && personsTF.text != "" {
            
            for numberInt in 1...numberInt {
                
                self.numberArr.append(numberInt)
                self.tnameArr.append("")
                self.tadressArr.append("")
                self.temailArr.append("")
                
            }
            DispatchQueue.main.async {
            self.personsTableview.reloadData()
            }
        }
        
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
          personsTF.inputAccessoryView = bar
         // heightTF.inputAccessoryView = bar
      }
      @objc func dismissMyKeyboard(){
          view.endEditing(true)
        self.test()
      }
    
    
    func test(){
        self.tablegencell()
        self.tableconstarin.constant = CGFloat(numberInt * 180
        )
        self.viewheight.constant += tableconstarin.constant
    }
    
    @IBAction func butnActn(_ sender: Any) {
      //  print(fullStr)
//        print(tadressArr)
//        print(temailArr)
        self.addString()
    }
    
    func addString() {
        
//        print(self.nameVisitorsArr)
//        print(self.mobileVisitorsArr)
//        print(self.emailVisitorsArr)
//
        for index in 0..<self.tnameArr.count {
            
            if index == 0{
                fullStr = String(format: "%@,%@,%@,%@",self.tnameArr[index],self.tadressArr[index],self.temailArr[index])
            }
            else{
                fullStr = String(format: "%@|%@,%@,%@,%@",fullStr,self.tnameArr[index],self.tadressArr[index],self.temailArr[index])
            }
        print(String(format: "full string is %@", fullStr))
            print(String(fullStr))
        }
    }

    
}



extension SettingViewController: UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = personsTableview.dequeueReusableCell(withIdentifier: "NikonTableViewCell", for: indexPath) as? NikonTableViewCell
        
        
        cell?.tnameTF.tag = 1
        cell?.tadressTF.tag = 2
        cell?.temailTF.tag = 3
        
        
        
        
        
        
        cell?.tnameTF.text = self.tnameArr[indexPath.row]
        cell?.tadressTF.text = self.tadressArr[indexPath.row]
        cell?.temailTF.text = self.temailArr[indexPath.row]
        
        
        
        cell?.tnameTF.delegate = self
        cell?.tadressTF.delegate = self
        cell?.temailTF.delegate = self
        
        
        
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           
           return 180
       }
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
    
        if textField == personsTF {
            
            tableconstarin.constant = 0
            viewheight.constant = 815
            self.numberArr = [Int]()
            self.personsTableview.reloadData()
        } else {
            
        }
    return true
    
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField == personsTF{
            
            if personsTF.text != "0" && personsTF.text != "" {
            
            self.tablegencell()
            self.tableconstarin.constant = CGFloat(numberInt * 180)
          //  self.viewheight.constant += tableconstarin.constant
            } else {}
        
        } else {
            
            let pointinTable = textField.convert(textField.bounds.origin, to: self.personsTableview)
            let rowText = self.personsTableview.indexPathForRow(at: pointinTable)
            
            let textfieldINdexpath = textField.tag
         
            
            if textfieldINdexpath == 1 {
                self.tnameArr[rowText?.row ?? 0] = textField.text ?? ""
            } else if textfieldINdexpath == 2 {
                self.tadressArr[rowText?.row ?? 0] = textField.text ?? ""
                
            } else if textfieldINdexpath == 3 {
                self.temailArr[rowText?.row ?? 0] = textField.text ?? ""
            }
//            DispatchQueue.main.async {
//                   self.personsTableview.reloadData()
//
//                          }
        }
//        DispatchQueue.main.async {
//        self.personsTableview.reloadData()
//
//               }
    }
    
    
    
    
    
}
