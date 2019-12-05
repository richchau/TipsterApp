//
//  ViewController.swift
//  TipsterApp
//
//  Created by Rich Chau on 12/5/19.
//  Copyright © 2019 Rich Chau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalFor2Label: UILabel!
    @IBOutlet weak var totalFor3Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.billField.becomeFirstResponder()
    }

//    @IBAction func onTap(_ sender: Any) {
//        print("Hello")
//
//        view.endEditing(true)
//    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalFor2Label.text = String(format: "$%.2f", total/2)
        totalFor3Label.text = String(format: "$%.2f", total/3)
    }
}

