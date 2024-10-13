//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muhammet Emin Kocaman on 11.10.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//
import UIKit


struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    
    mutating func calculateBMI (height:Float,weight:Float)  {
        let   bmiValue  = (Float)(weight / (height * height))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Biraz daha ye.", color: UIColor.systemBlue)
        } else if bmiValue >= 18.5 && bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "Iyisin", color: UIColor.systemGreen)
        } else if bmiValue >= 25 && bmiValue < 30 {
            bmi = BMI(value: bmiValue, advice: "Zayifla sis...", color: UIColor.systemRed)        }
        
      
    }
   
}

