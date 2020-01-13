//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        let hieght = String(format: "%.2f", sender.value)+" m"
        
        labelHeight.text! = hieght
    }
    
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)+" Kg"
        
        labelWeight.text! = weight
        
//        labelWeight.text! = "\(Int((sender.value))) Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmiResult = weight / pow(height, 2)
        
        print("\(height)")
        print("\(weight)")
        print("\(bmiResult)")
    }
    
}

