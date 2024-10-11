//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muhammet Emin Kocaman on 11.10.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation


class CalculatorBrain {
    var bmiValue : String?
    let bmi = (weight/pow(height, 2))
    bmiValue = String(format: "%.1f", bmi)
}
