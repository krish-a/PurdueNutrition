//
//  PopUpViewController.swift
//  Nutrition App 2.0
//
//  Created by Krishanraj Ashok on 11/30/21.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var avoidLabel: UILabel!
    @IBOutlet weak var diningCourt: UILabel!
    var dc = ""
    var text1 = ""
    var text2 = ""
    var text3 = ""
    var avoidtext = ""
    var avoidtext2 = ""
    
    override func viewDidLoad() {
        diningCourt.text = dc
        avoidLabel.textColor = UIColor.red
    }
    
}
