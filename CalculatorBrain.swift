//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohammad Agung on 01/05/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiValueString = String(format:"%.2f", bmi?.bmiValue ?? "0.0")
        return bmiValueString
    }
    
    func getTips() -> String {
        let tips = bmi?.tips ?? ""
        return tips
    }
    
    func getColor() -> UIColor {
        let color = bmi?.backgroundColor ?? .green
        return color
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue: bmiValue, tips: "Koe kurang mangan, Mangan!", backgroundColor: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, tips: "Awak mu wes apik, Jos!", backgroundColor: .lightGray)
        } else {
            bmi = BMI(bmiValue: bmiValue, tips: "Kelemon awak mu cuk!", backgroundColor: .red)
        }
    }
    
}
