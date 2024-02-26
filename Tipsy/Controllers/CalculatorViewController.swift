//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    
    var calculatorBrain = CalculatorBrain()
    var percent: String = "0"
    var numberOfPeople = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        percent = sender.currentTitle!.replacingOccurrences(of: "%", with: "")
        //Deselect all tip buttons via IBOutlets
        //Deselect all tip buttons via IBOutlets
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
               
        //Make the button that triggered the IBAction selected.
        sender.isSelected = true
    
        
               
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        calculatorBrain.calculate(percent: percent, numberOfPeople: numberOfPeople, bill: billTextField.text!)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationScreen = segue.destination as! ResultsViewController
            destinationScreen.calculatorModel = calculatorBrain.getCalculatorModel()
        }
    }
}

