//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mohammad Agung on 29/03/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var labelBMIValue: UILabel!
    @IBOutlet weak var labelTips: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelBMIValue.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
