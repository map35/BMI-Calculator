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
            bmi = BMI(bmiValue: bmiValue, tips: "Koe kurang mangan, Mangan!", backgroundColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, tips: "Awak mu wes apik, Jos!", backgroundColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else {
            bmi = BMI(bmiValue: bmiValue, tips: "Kelemon awak mu cuk!", backgroundColor: #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1))
        }
    }
    
}
