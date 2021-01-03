//
//  ViewController.swift
//  PreWork
//
//  Created by administrator on 1/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func onTap(_ sender: Any) {
        
        print("Hello")
     //   view.endEditing(<#T##force: Bool##Bool#>)
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        print("calcluate tip")
        
        // Get the bill Amount
        let bill = Double( billField.text!) ?? 0
        
        
        // Calculate the tip and the total
        let tipPercentages = [0.15,0.18,0.20]
        
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        // Update the tip and the total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

