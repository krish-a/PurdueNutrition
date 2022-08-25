//
//  ViewController.swift
//  Nutrition App 2.0
//
//  Created by Krishanraj Ashok on 10/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diningCourtsLabel: UILabel!
    
    @IBOutlet weak var titleBackgroundColor: UIImageView!
    
    @IBOutlet weak var hillenbrand: UIButton!
    @IBOutlet weak var earhart: UIButton!
    @IBOutlet weak var wiley: UIButton!
    @IBOutlet weak var windsor: UIButton!
    @IBOutlet weak var ford: UIButton!
    
    var dc : String = "None"
    
    @IBOutlet weak var rating1: UILabel!
    @IBOutlet weak var space1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        UIEdits()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true);
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func UIEdits() {
        diningCourtsLabel.font = UIFont.boldSystemFont(ofSize: 35.0)
        diningCourtsLabel.textColor = UIColor.white
        //titleBackgroundColor.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 200/255, green: 0, blue: 0, alpha: 1))
        //titleBackgroundColor.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 83/255, green: 166/255, blue: 84/255, alpha: 1))
        Utilities.mainColor(image: titleBackgroundColor)
        //hillenbrand.setTitleColor(UIColor(cgColor: CGColor(srgbRed: 200/255, green: 0, blue: 0, alpha: 1)), for: .normal)
        //rating1.textColor = UIColor(cgColor: CGColor(srgbRed: 200/255, green: 0, blue: 0, alpha: 1))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(dc)
        var secondVC: SecondViewController = segue.destination as! SecondViewController
        secondVC.receivedString = dc
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        super.performSegue(withIdentifier: identifier, sender: self)
    }
    
    
    @IBAction func hillenbrandPressed(_ sender: Any) {
        dc = "Hillenbrand"
        performSegue(withIdentifier: "firstSegue", sender: self)
    }
    @IBAction func earhartPressed(_ sender: Any) {
        dc = "Earhart"
        performSegue(withIdentifier: "firstSegue", sender: self)
    }
    @IBAction func wileyPressed(_ sender: Any) {
        dc = "Wiley"
        performSegue(withIdentifier: "firstSegue", sender: self)
    }
    @IBAction func windsorPressed(_ sender: Any) {
        dc = "Windsor"
        performSegue(withIdentifier: "firstSegue", sender: self)
    }
    @IBAction func fordPressed(_ sender: Any) {
        dc = "Ford"
        performSegue(withIdentifier: "firstSegue", sender: self)
    }
}

