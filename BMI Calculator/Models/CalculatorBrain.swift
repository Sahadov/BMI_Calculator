//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Дмитрий Волков on 05.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let receivedBMI = weight / pow(height, 2)
        
        switch receivedBMI {
        case ...18.5:
            bmi = BMI(value: receivedBMI, advice: "Eat more cakes!", color: UIColor.systemBlue)
        case 18.5...24.9:
            bmi = BMI(value: receivedBMI, advice: "Fit as Fiddle!", color: UIColor.systemGreen)
        default:
            bmi = BMI(value: receivedBMI, advice: "Eat less cakes!", color: UIColor.systemPurple)
        }
        
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Default advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.green
    }
    
}

