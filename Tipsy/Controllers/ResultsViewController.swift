//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Farhan Fadhilah on 20/02/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    var calculatorModel: CalculatorModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = calculatorModel?.totalPerPerson
        settingsLabel.text = "Split between \(calculatorModel!.numberOfPeople), with \(calculatorModel!.tip)% tip"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
