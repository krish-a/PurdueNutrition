//
//  SecondViewController.swift
//  Nutrition App 2.0
//
//  Created by Krishanraj Ashok on 11/9/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var border1: UIImageView!
    @IBOutlet weak var border2: UIImageView!
    
    @IBOutlet weak var comment3Name: UILabel!
    @IBOutlet weak var comment3Rating: UILabel!
    @IBOutlet weak var comment3Text: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star5: UIButton!
    
    var stars = 0
    
    var receivedString: String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = receivedString + " Reviews"
        border1.backgroundColor = UIColor.black
        border2.backgroundColor = UIColor.black
    
        textField.tintColor = UIColor.black
        comment3Name.textColor = UIColor.white
        comment3Rating.textColor = UIColor.white
        comment3Text.textColor = UIColor.white
    }
    
    @IBAction func postPressed(_ sender: Any) {
        comment3Name.textColor = UIColor.black
        comment3Text.text = "    "+textField.text!
        comment3Text.textColor = UIColor.black
        
        for index in 1...stars {
            comment3Rating.text = comment3Rating.text! + "★"
        }
        for index in 1...(5-stars) {
            comment3Rating.text = comment3Rating.text! + "☆"
        }
        comment3Rating.textColor = UIColor.black
    }
    
    @IBAction func star1Pressed(_ sender: Any) {
        star1.setTitle("★", for: .normal)
        stars = 1
    }
    @IBAction func star2Pressed(_ sender: Any) {
        star1.setTitle("★", for: .normal)
        star2.setTitle("★", for: .normal)
        stars = 2
    }
    @IBAction func star3Pressed(_ sender: Any) {
        star1.setTitle("★", for: .normal)
        star2.setTitle("★", for: .normal)
        star3.setTitle("★", for: .normal)
        stars = 3
    }
    @IBAction func star4Pressed(_ sender: Any) {
        star1.setTitle("★", for: .normal)
        star2.setTitle("★", for: .normal)
        star3.setTitle("★", for: .normal)
        star4.setTitle("★", for: .normal)
        stars = 4
    }
    @IBAction func star5Pressed(_ sender: Any) {
        star1.setTitle("★", for: .normal)
        star2.setTitle("★", for: .normal)
        star3.setTitle("★", for: .normal)
        star4.setTitle("★", for: .normal)
        star5.setTitle("★", for: .normal)
        stars = 5
    }
}
