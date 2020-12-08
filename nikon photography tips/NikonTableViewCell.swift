//
//  NikonTableViewCell.swift
//  nikon photography tips
//
//  Created by hemanth on 19/08/20.
//  Copyright © 2020 hEm@nTh ChErRy. All rights reserved.
//

import UIKit

class NikonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var tnameTF: UITextField!
    @IBOutlet weak var tadressTF: UITextField!
    @IBOutlet weak var temailTF: UITextField!

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
