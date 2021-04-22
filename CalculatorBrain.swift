

import UIKit
struct Calculator {
    
    var bmi: BMI?

    
    
   mutating func calculateBMI (height: Float, weight: Float) {
    let bmiValue = weight/pow(height,2)
   
    
    if bmiValue < 18.5 {
        bmi = BMI (value: bmiValue, advice: "Eat more pies motherfucker", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
      
    } else if bmiValue < 24.9 {
        bmi = BMI (value: bmiValue, advice: "You are ver sexy and fit", color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
       
    } else {
        bmi = BMI (value: bmiValue, advice: "Eat less faty", color: #colorLiteral(red: 0.6474125981, green: 0.118523322, blue: 0.1335714757, alpha: 1))
    }
        
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
      
    }
     
    mutating func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
   
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
}
