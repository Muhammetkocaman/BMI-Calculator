//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Muhammet Emin Kocaman on 10.10.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
   
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        }
    
   
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToHome", sender: self)
        
    }
    
   

}
