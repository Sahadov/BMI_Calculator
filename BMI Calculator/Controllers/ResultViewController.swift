//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Дмитрий Волков on 05.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var adviceLabel: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue


    }
    

   

}
