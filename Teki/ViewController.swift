//
//  ViewController.swift
//  Teki
//
//  Created by Claire Sivadier on 12/10/2018.
//  Copyright © 2018 Claire Siva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var celebrities = ["le Patrick Sébastien", "le Laurent Gerra", "la Maria Carey", "la Céline Dion", "le Nicolás García"]
    var activities = ["des pâtes", "de la Macarena", "des bêtises", "de la guitare","du mytho", "de la pétanque", "du tennis"]

    @IBOutlet weak var quoteLabel: UILabel!
    
    // @IBOutlet weak var actionButton: UIButton!

    @IBAction func changeQuote() {
        let randomIndex1 = Int (arc4random_uniform(UInt32(celebrities.count)))
        let celibrity = celebrities[randomIndex1]
     
        
        let randomIndex2 = Int (arc4random_uniform(UInt32 (activities.count)))
        let activity = activities [randomIndex2]
        
        let quote = "Tu es " + celibrity +  " " + activity + " !!!"
        
        quoteLabel.text = quote
        
        //actionButton.backgroundColor = .red
        //actionButton.layer.cornerRadius = 16
    }


}

