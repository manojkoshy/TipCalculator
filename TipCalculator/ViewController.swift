//
//  ViewController.swift
//  TipCalculator
//
//  Created by Mathew on 2/27/17.
//  Copyright © 2017 University of California, Berkeley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var tipPercentages = [0.18,0.2,0.25]
    var tipSelection = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Did Disappear")
    }

    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18,0.2,0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipSelection]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func tipSelect(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        if tipControl.selectedSegmentIndex == 0 {
            tipSelection = 0
        }
        if tipControl.selectedSegmentIndex == 1 {
            tipSelection = 1
        }
        if tipControl.selectedSegmentIndex == 2 {
            tipSelection = 2
        }
        let tip = bill * tipPercentages[tipSelection]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

