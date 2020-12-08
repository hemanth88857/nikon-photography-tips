//
//  ImageViewViewController.swift
//  nikon photography tips
//
//  Created by H€m@Nt🅷  Ch€rRy on 09/07/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class ImageViewViewController: UIViewController {

    
    var manualchart = [String]()
    
//    var passedContentffset = IndexPath()
//    var passIndexpath : NSIndexPath!
    
    var shutterspeed = [String]()
    var aperture = [String]()
    var iso = [String]()
    
    var collectionviewController : String!


    
    
    
    @IBOutlet weak var settingcolllectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingcolllectionView.delegate = self
        settingcolllectionView.dataSource = self

        let otherVc = homeViewController()
        manualchart = otherVc.chartsImages

        if self.collectionviewController == "1" {
            manualchart = otherVc.isoImages

        } else if self.collectionviewController == "2" {
            manualchart = otherVc.shutterImages

        } else if self.collectionviewController == "3" {
            manualchart = otherVc.apertureImages

        } else {
            manualchart = otherVc.chartsImages

        }
        


        print(manualchart)

        // Do any additional setup after loading the view.
    }
    

    

    @IBAction func cancel(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)

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



extension ImageViewViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manualchart.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.settingcolllectionView.dequeueReusableCell(withReuseIdentifier: "DslrCollectionViewCell1", for: indexPath) as!  DslrCollectionViewCell1
        
       cell.chartsimages2.image = UIImage(named: manualchart[indexPath.row])
//        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(homeViewController.tap(_:)))
//
//           cell.chartsimages.isUserInteractionEnabled = true
//           cell.chartsimages.tag = indexPath.row
//           cell.chartsimages.addGestureRecognizer(tapGestureRecognizer)
        
    
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width:self.settingcolllectionView.frame.size.width / 1-1, height: 734)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    
}
