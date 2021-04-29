//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceImages = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    var leftDiceNumber = 1;
    var rightDiceNumber = 2;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.image = diceImages[0]
        diceImageViewTwo.image = diceImages[1]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
 
        // Generate a random integer
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)


        // We can get a random item from an Array
        diceImageViewOne.image = diceImages.randomElement()
        diceImageViewTwo.image = diceImages.randomElement()
    }
    
}

