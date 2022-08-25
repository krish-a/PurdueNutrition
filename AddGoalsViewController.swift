//
//  AddGoalsViewController.swift
//  Nutrition App 2.0
//
//  Created by Krishanraj Ashok on 11/13/21.
//

import UIKit

class AddGoalsViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    var goals : Array<UIButton> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button1pressed(_ sender: Any) {
        goals.append(button1)
        Utilities.mainColorButtonBackground(button: button1)
        //button1.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 107/255, green: 174/255, blue: 255/255, alpha: 1))
        button1.setTitleColor(UIColor.white, for: .normal)
        goals.append(button1)
    }
    @IBAction func button2pressed(_ sender: Any) {
        goals.append(button2)
        Utilities.mainColorButtonBackground(button: button2)
        //button2.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 107/255, green: 174/255, blue: 255/255, alpha: 1))
        button2.setTitleColor(UIColor.white, for: .normal)
        goals.append(button2)
    }
    @IBAction func button3pressed(_ sender: Any) {
        goals.append(button3)
        Utilities.mainColorButtonBackground(button: button3)
        //button3.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 107/255, green: 174/255, blue: 255/255, alpha: 1))
        button3.setTitleColor(UIColor.white, for: .normal)
        goals.append(button3)
    }
    @IBAction func button4pressed(_ sender: Any) {
        goals.append(button4)
        Utilities.mainColorButtonBackground(button: button4)
        //button4.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 107/255, green: 174/255, blue: 255/255, alpha: 1))
        button4.setTitleColor(UIColor.white, for: .normal)
        goals.append(button4)
    }
    @IBAction func button5pressed(_ sender: Any) {
        goals.append(button5)
        Utilities.mainColorButtonBackground(button: button5)
        //button5.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 107/255, green: 174/255, blue: 255/255, alpha: 1))
        button5.setTitleColor(UIColor.white, for: .normal)
        goals.append(button5)
    }
    
    @IBAction func savePressed(_ sender: Any) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondVC: GoalsViewController = segue.destination as! GoalsViewController
        secondVC.goals = goals
    }
}
