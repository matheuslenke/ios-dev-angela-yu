//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var selectedPercentage: Float = 0.0
    var splitNumber: Int = 2
    var billTotal: Float?
    var billSplit: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroPctButton.isSelected = true
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let buttonTitle = sender.currentTitle ?? ""
        switch buttonTitle {
        case "0%":
            selectedPercentage = 0
        case "10%":
            selectedPercentage = 0.1
        case "20%":
            selectedPercentage = 0.2
        default:
            selectedPercentage = 0
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        splitNumber = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billTotal: Float? = Float(billTextField.text!)
        if let safeBillTotal = billTotal {
            let billWithTip = safeBillTotal * (1 + selectedPercentage)
            
            billSplit = billWithTip / Float(splitNumber)
            self.performSegue(withIdentifier: "goToResult", sender: self)
        } else {
            print("No value entered")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.billResult = String(format: "%.2f" , billSplit ?? 0.0)
            destinationVC.totalPeople = splitNumber
            destinationVC.tipPercentage = selectedPercentage
      
        }
    }
}

