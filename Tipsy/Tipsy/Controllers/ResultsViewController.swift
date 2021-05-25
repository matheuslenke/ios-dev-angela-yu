//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Matheus Lenke on 25/05/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var billResult: String?
    var totalPeople: Int?
    var tipPercentage: Float?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = billResult
        if let safeTotalPeople = totalPeople {
            if let safeTipPercentage = tipPercentage {
                settingsLabel.text = "Split between \(safeTotalPeople) people, with \(Int(safeTipPercentage * 100))% tip."
            }
        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
