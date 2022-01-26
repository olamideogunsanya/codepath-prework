//
//  ViewController.swift
//  Prework
//
//  Created by Ola Ogunsanya on 1/18/22.
//

import UIKit
import SwiftUI



class ViewController: UIViewController {

                            
    @IBOutlet weak var billAmountTextField: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBOutlet weak var updateView: UISwitch!
    
    @IBAction func calculateTip(_ sender: Any) {
    
    
    let bill = Double(billAmountTextField.text!) ?? 0
    
    // sets the bill amount
    let tipPercentages = [0.15, 0.18, 0.2]
    let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
    let total = bill + tip
    
    //Update Tip Amount label
    tipAmountLabel.text = String(format: "$%.2f", tip )
    
    //Update Total Amount
    totalLabel.text = String(format: "$%.2f", total)
    
    }

}
