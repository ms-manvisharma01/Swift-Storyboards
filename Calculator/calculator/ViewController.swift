//
//  ViewController.swift
//  calculator
//
//  Created by GEU on 27/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputtextfield: UITextField!
    @IBOutlet weak var resulttextfield: UITextField!
    var current:String = ""
    var previousNumber:Double = 0
    var currentOperation: String = ""
    var performingOperation = false
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func appendDigit(_ digit: String) {
            if performingOperation {
                current = ""
                performingOperation = false
            }
            current += digit
            inputtextfield.text = current
        }
        
        @IBAction func buttonZero(_ sender: Any) {
            appendDigit("0")
        }
        @IBAction func buttonOne(_ sender: Any) {
            appendDigit("1")
        }
        @IBAction func buttonTwo(_ sender: Any) {
            appendDigit("2")
        }
        @IBAction func buttonThree(_ sender: Any) {
            appendDigit("3")
        }
        @IBAction func buttonFour(_ sender: Any) {
            appendDigit("4")
        }
        @IBAction func buttonFive(_ sender: Any) {
            appendDigit("5")
        }
        @IBAction func buttonSix(_ sender: Any) {
            appendDigit("6")
        }
        @IBAction func buttonSeven(_ sender: Any) {
            appendDigit("7")
        }
        @IBAction func buttonEight(_ sender: Any) {
            appendDigit("8")
        }
        @IBAction func buttonNine(_ sender: Any) {
            appendDigit("9")
        }
        
        // Operation buttons (+, -, ×, ÷)
        @IBAction func buttonAdd(_ sender: Any) {
            setOperation("+")
        }
        
        @IBAction func buttonSubtract(_ sender: Any) {
            setOperation("-")
        }
        
        @IBAction func buttonMultiply(_ sender: Any) {
            setOperation("×")
        }
        
        @IBAction func buttonDivide(_ sender: Any) {
            setOperation("÷")
        }
        
        func setOperation(_ op: String) {
            if let number = Double(current) {
                previousNumber = number
                currentOperation = op
                performingOperation = true
            }
        }
    @IBAction func buttonEqual(_ sender: Any) {
            if let currentNumber = Double(current) {
                var result: Double = 0
                switch currentOperation {
                case "+":
                    result = previousNumber + currentNumber
                case "-":
                    result = previousNumber - currentNumber
                case "×":
                    result = previousNumber * currentNumber
                case "÷":
                    if currentNumber != 0 {
                        result = previousNumber / currentNumber
                    } else {
                        inputtextfield.text = "Error (div by 0)"
                        resulttextfield.text = ""
                        return
                    }
                default:
                    return
                }
                resulttextfield.text = "\(result)"
                inputtextfield.text = ""
                current = "\(result)"
                performingOperation = false
                currentOperation = ""
            }
        }
    @IBAction func buttonClear(_ sender: Any) {
            current = ""
            previousNumber = 0
            currentOperation = ""
            inputtextfield.text = ""
            resulttextfield.text = ""
            performingOperation = false
        }
    
}

