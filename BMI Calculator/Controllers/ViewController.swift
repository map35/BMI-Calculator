//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bmiResult: String?
    
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)+" m"
        
        labelHeight.text! = height
    }
    
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)+" Kg"
        
        labelWeight.text! = weight
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        bmiResult = String(format:"%.2f", bmi)
        
        print(String(format:"%.2f", height))
        print(String(format:"%.0f", weight))
        print(String(format:"%.2f", bmi))
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = self.bmiResult
        }
    }
    
}

