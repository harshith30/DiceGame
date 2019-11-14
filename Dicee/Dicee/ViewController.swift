//
//  ViewController.swift
//  Dicee
//
//  Created by Empulse on 06/11/19.
//  Copyright © 2019 Empulse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randonDiceIndex1: Int = 0
    var randonDiceIndex2: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

        
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
       updateDiceImages()
    }
    
    func updateDiceImages() {
        randonDiceIndex1 = Int(arc4random_uniform(6))
        randonDiceIndex2 = Int(arc4random_uniform(6))
               
        diceImageView1.image = UIImage(named: diceArray[randonDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randonDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
         updateDiceImages()
    }
}

