//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Farhan Fadhilah on 26/02/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

struct CalculatorBrain {
    var calculatorModel: CalculatorModel?
    
    
    mutating func calculate(percent: String, numberOfPeople: Int, bill: String){
        
        if bill != "" {
            //Turn the String into a Double.
            let buttonTitleAsANumber = Double(percent)!
           
            //Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
            let tip = buttonTitleAsANumber / 100
            
            let billTotal = Double(bill)!
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            
          
            let resultTo2DecimalPlaces = String(format: "%.2f", result)
            
            calculatorModel = CalculatorModel(tip: percent, numberOfPeople: String(numberOfPeople), totalPerPerson: resultTo2DecimalPlaces)
            
            print(resultTo2DecimalPlaces)
        }
       
    }
    
    func getCalculatorModel() -> CalculatorModel? {
        return calculatorModel
    }
}
