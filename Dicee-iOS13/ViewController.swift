//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    let diceOne = #imageLiteral(resourceName: "DiceOne")
    let diceTwo = #imageLiteral(resourceName: "DiceTwo")
    let diceThree = #imageLiteral(resourceName: "DiceThree")
    let diceFour = #imageLiteral(resourceName: "DiceFour")
    let diceFive = #imageLiteral(resourceName: "DiceFive")
    let diceSix = #imageLiteral(resourceName: "DiceSix")
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let roll = [diceOne, diceTwo, diceThree, diceFour, diceFive, diceSix]
        
        for dice in [diceImageView1, diceImageView2] {
            let randomNum = Int.random(in: 0...5)
            dice?.image = roll[randomNum]
        }
    }
}

