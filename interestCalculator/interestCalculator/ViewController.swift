//
//  ViewController.swift
//  interestCalculator
//
//  Created by GEU on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var principalTextField: UITextField!
    
    @IBOutlet weak var rateTextField: UITextField!
    
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var outputTextField: UITextField!
    
    @IBAction func simpeInteretButton(_ sender: Any) {
        calculateSimpleInterest()
    }
    
    @IBAction func compoundInterestButton(_ sender: Any) {
        calculateCompoundInterest()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func calculateSimpleInterest(){
        let principal:Double = Double(principalTextField.text!) ?? 0
        let rate:Double = Double(rateTextField.text!) ?? 0
        let time:Double = Double(timeTextField.text!) ?? 0
        let simpleInterest:Double = (principal * rate * time)/100
        outputTextField.text = "\(simpleInterest)"
    }
    func calculateCompoundInterest(){
        let principal:Double = Double(principalTextField.text!) ?? 0
        let rate:Double = Double(rateTextField.text!) ?? 0
        let time:Double = Double(timeTextField.text!) ?? 0
        let compoundInterest = principal * pow((1 + rate / 100), time) - principal

        outputTextField.text = "\(compoundInterest)"
    }


}

