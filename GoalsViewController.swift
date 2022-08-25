//
//  GoalsViewController.swift
//  Nutrition App 2.0
//
//  Created by Krishanraj Ashok on 11/13/21.
//

import UIKit

class GoalsViewController: UIViewController {
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var nutritionGoalsLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    
    var goals : Array<UIButton> = Array()
    @IBOutlet weak var goalsStackView: UIStackView!
    
    @IBOutlet weak var diningButton: UIButton!
    
    var x = false;
    var court = "";
    
    override func viewDidLoad() {
        //topImage.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 200/255, green: 0, blue: 0, alpha: 1))
        //topImage.backgroundColor = UIColor(cgColor: CGColor(srgbRed: 83/255, green: 166/255, blue: 84/255, alpha: 1))
        Utilities.mainColor(image: topImage)
        nutritionGoalsLabel.textColor = UIColor.white
        plusButton.setTitleColor(UIColor.white, for: .normal)
        //diningButton.setTitleColor(UIColor.red, for: .normal)
        Utilities.mainColorButton(button: diningButton)
        //plusButton.setTitleColor(UIColor(cgColor: CGColor(srgbRed: 170/255, green: 226/255, blue: 255/255, alpha: 1)), for: .normal)
        if( diningButton.titleLabel?.text == "   N/A") {
            diningButton.isEnabled = false
        }
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue){
        //var button : UIButton
        var rmi = false;
        var protein = false;
        for button in goals {
            goalsStackView.addArrangedSubview(button)
            button.backgroundColor = UIColor.white
            button.setTitleColor(UIColor.black, for: .normal)
            if( button.titleLabel?.text == "     Reduce Meat Intake") {
                court = "Windsor"
                diningButton.setTitle(" "+court, for: .normal)
                rmi = true;
            }
            if(button.titleLabel?.text == "     Increase Protein") {
                protein = true;
                if(rmi) {
                    court = "Earhart"
                    diningButton.setTitle(" "+court, for: .normal)
                } else {
                    court = "Hillenbrand"
                    diningButton.setTitle(" "+court, for: .normal)
                }
                print(protein)
            }
            if(button.titleLabel?.text == "     Eat More Fruits/Vegetables") {
                print(protein)
                if( protein ) {
                    court = "Wiley"
                    diningButton.setTitle(" "+court, for: .normal)
                } else {
                    court = "Ford"
                    diningButton.setTitle(" "+court, for: .normal)
                }
            }
        }
        diningButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if( x ) {
            let secondVC: InfoViewController = segue.destination as! InfoViewController
            secondVC.dc = court
            x = false
        }
    }
        
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
    }
    
    @IBAction func diningPressed(_ sender: Any)
    {
        x = true
        performSegue(withIdentifier: "popupSegue", sender: self)
    }
}
