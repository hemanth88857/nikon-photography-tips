//
//  homeViewController.swift
//  nikon photography tips
//
//  Created by H€m@Nt🅷  Ch€rRy on 09/07/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit


class homeViewController: UIViewController {
    

    var chartsImages = ["manual-1","manual-2","manual-3","manual-4","manual-5","manual-6","manual-7"]
    var shutterImages = ["shutter-1","shutter-2","shutter-3"]
    var apertureImages = ["aperture-1","aperture-2","aperture-3"]
    var isoImages = ["iso-1","iso-2","iso-3","iso-4"]
    
    var selectIndex : IndexPath!
    var selectStr : String!


    
    var change : String!
    var sampletext = ""
    
    @IBOutlet weak var chartsCollectionView: UICollectionView!
    
    @IBOutlet weak var homeFullgalleryCollectionView: UICollectionView!
    
    
    @IBOutlet weak var shutterSpdBtnOutlet: UIButton!
    @IBOutlet weak var apptureBtnOutlet: UIButton!
    @IBOutlet weak var ISOBtnOutlet: UIButton!

    @IBOutlet weak var pagechangeBtnOutlet: UIButton!
    
    @IBOutlet weak var buttomview: UIView!
    @IBOutlet weak var secondview: UIView!

    //MARK:Viewdidload
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.squarebox()
        
       
        
        chartsCollectionView.delegate = self
        chartsCollectionView.dataSource = self
        
        homeFullgalleryCollectionView.delegate = self
        homeFullgalleryCollectionView.dataSource = self
        
        
        
        self.buttomview.isHidden = true
        
        
        self.pagechangeBtnOutlet.isHidden = true
        self.chartsCollectionView.reloadData()
        
        self.pagechangeBtnOutlet.layer.cornerRadius = self.pagechangeBtnOutlet.frame.size.height/2
        self.pagechangeBtnOutlet.clipsToBounds = true
        
        UIView.transition(with: self.buttomview, duration: 0.5, options: .transitionCrossDissolve, animations: {
             self.buttomview.isHidden = true
        })
        

        // Do any additional setup after loading the view.
        
        
    }
    
    
    //MARK:navigation controller
    

   
//     override func viewDidDisappear(_ animated: Bool) {
//         self.navigationController?.isNavigationBarHidden = false
//
//     }
  

    
    func squarebox(){
        self.shutterSpdBtnOutlet.layer.cornerRadius = self.shutterSpdBtnOutlet.frame.size.height/2
        self.shutterSpdBtnOutlet.clipsToBounds = true
        
        
        self.apptureBtnOutlet.layer.cornerRadius = self.apptureBtnOutlet.frame.size.height/2
            self.apptureBtnOutlet.clipsToBounds = true
        
        self.ISOBtnOutlet.layer.cornerRadius = self.ISOBtnOutlet.frame.size.height/2
            self.ISOBtnOutlet.clipsToBounds = true
    }

      @IBAction func Iso(_ sender: UIButton) {
            self.change = "1"
                self.sampletext = "1"


            self.chartsCollectionView.reloadData()

            self.pagechangeBtnOutlet.isHidden = false

    //        self.secondview.isHidden = true
    //        self.buttomview.isHidden = false
    //        self.buttomview.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)



           }
    
    @IBAction func shutterspped(_ sender: UIButton) {
        self.change = "2"
        self.sampletext = "2"

        self.chartsCollectionView.reloadData()

        self.pagechangeBtnOutlet.isHidden = false

       // self.secondview.isHidden = true
       // self.buttomview.isHidden = false
      //  self.buttomview.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)


    }
    
    @IBAction func apeture(_ sender: UIButton) {
        self.change = "3"
        self.sampletext = "3"

        self.chartsCollectionView.reloadData()

        self.pagechangeBtnOutlet.isHidden = false

//        self.secondview.isHidden = true
//        self.buttomview.isHidden = false
//        self.buttomview.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)


       }
  
    
    
 
    @IBAction func mamual(_ sender: Any) {
        
        self.change = "4"
        self.sampletext = "4"
        self.chartsCollectionView.reloadData()

        self.pagechangeBtnOutlet.isHidden = true

//        self.secondview.isHidden = false
//        self.buttomview.isHidden = true

    }
    
    
    @IBAction func pageforwardBtn(_ sender: UIButton) {
        
        let page = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "fullimageViewController") as? fullimageViewController
        
        self.navigationController?.pushViewController(page!, animated: false)
    }
    
    
    @IBAction func close(_ sender: UIButton) {
        
        self.buttomview.isHidden = true
        self.navigationController?.isToolbarHidden = false


    }
    
    
    
    
}


extension homeViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if self.sampletext == "1" {
            return isoImages.count

        } else if self.sampletext == "2" {
            return shutterImages.count

        } else if self.sampletext == "3" {
            return apertureImages.count

        } else {
            return chartsImages.count

        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == chartsCollectionView {
            let cell = self.chartsCollectionView.dequeueReusableCell(withReuseIdentifier: "DslrCollectionViewCell1", for: indexPath) as!  DslrCollectionViewCell1
                  
            //     cell.chartsimages.image = UIImage(named: chartsImages[indexPath.row])
                  
                  
                  if self.sampletext == "1" {
                      cell.chartsimages.image = UIImage(named: isoImages[(indexPath as NSIndexPath).row])

                  } else if self.sampletext == "2" {
                      cell.chartsimages.image = UIImage(named: shutterImages[indexPath.row])

                  } else if self.sampletext == "3" {
                      cell.chartsimages.image = UIImage(named: apertureImages[indexPath.row])

                  } else {
                      cell.chartsimages.image = UIImage(named: chartsImages[indexPath.row])

                  }


              
                  return cell
            
        } else {
            
          let cell = homeFullgalleryCollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell1", for: indexPath) as? CollectionViewCell1
              
              if selectStr != nil
              {
                  
               cell?.homeFullGallery.image = UIImage(named: chartsImages[selectIndex.row])
               selectIndex = indexPath
                selectStr = nil
            
              } else
              {
                  cell?.homeFullGallery.image = UIImage(named: chartsImages[indexPath.row])
                  selectIndex = indexPath
              }
             
              
              cell?.homeFullGallery.layer.cornerRadius = 4
              


              
                  return cell!
        }
        
        
        
        /*
        
        
        let cell = self.chartsCollectionView.dequeueReusableCell(withReuseIdentifier: "DslrCollectionViewCell1", for: indexPath) as!  DslrCollectionViewCell1
        
  //     cell.chartsimages.image = UIImage(named: chartsImages[indexPath.row])
        
        
        if self.sampletext == "1" {
            cell.chartsimages.image = UIImage(named: chartsImages[(indexPath as NSIndexPath).row])

        } else if self.sampletext == "2" {
            cell.chartsimages.image = UIImage(named: shutterImages[indexPath.row])

        } else if self.sampletext == "3" {
            cell.chartsimages.image = UIImage(named: apertureImages[indexPath.row])

        } else {
            cell.chartsimages.image = UIImage(named: isoImages[indexPath.row])

        }


    
        return cell
 */
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == chartsCollectionView {
        return CGSize(width:self.chartsCollectionView.frame.size.width, height: self.chartsCollectionView.frame.size.height)
        } else {
            return CGSize(width:self.homeFullgalleryCollectionView.frame.size.width, height: self.homeFullgalleryCollectionView.frame.size.height)

        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {


//                    let page = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "fullimageViewController") as? fullimageViewController
//        //
//                        page?.fullImageView = UIImage(named: chartsImages[indexPath.row])!
//    //   page?.fullImageView =   apertureImages
//
//                        self.navigationController?.pushViewController(page!, animated: false)
//

        
    
        
////
          let cell = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ImageViewViewController") as? ImageViewViewController




        if self.sampletext == "1" {
         cell?.collectionviewController = "1"

            cell?.manualchart =  isoImages
           // cell?.passedContentffset = indexPath

            self.navigationController?.pushViewController(cell!, animated: true)
                //  self.present(cell!, animated: false, completion: nil)


               } else if self.sampletext == "2" {
            cell?.collectionviewController = "2"

            cell?.manualchart =  shutterImages
          //  cell?.passedContentffset = indexPath

                  self.present(cell!, animated: false, completion: nil)


               } else if self.sampletext == "3" {
            cell?.collectionviewController = "3"

            cell?.manualchart =  apertureImages
            print("aperture")


                  self.present(cell!, animated: false, completion: nil)






               } else {
            cell?.manualchart =  chartsImages
            cell?.collectionviewController = "4PixcelCalViewController"

                  self.present(cell!, animated: false, completion: nil)


               }
////
//
        
        print(indexPath.row)

        
        
//        if collectionView == chartsCollectionView
//              {
////                  self.navigationController?.isToolbarHidden = true
////                navigationController?.hidesBarsOnTap = true
//
//                  selectStr = "select"
//            //      selectIndex = indexPath
//                  self.homeFullgalleryCollectionView.reloadData()
//
//              } else
//              {
//
//              }
//
        
        
      //  UIView.transition(with: self.buttomview, duration: 0.5, options: .transitionFlipFromLeft, animations: {
         //          self.buttomview.isHidden = false
            //   })
       
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 0
      }

      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
          return 0
      }
}
