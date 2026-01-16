//
//  ViewController.swift
//  rgbColorChanger
//
//  Created by GEU on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTextField: UITextField!
    
    @IBOutlet weak var greenTextField: UITextField!
    
    @IBOutlet weak var bluetextField: UITextField!
    
    
    @IBOutlet weak var colorBox: UILabel!
    @IBAction func changeColorButton(_ sender: Any) {
        changeColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func randomColorComponent() -> Double {
            Double.random(in: 0...255)
        }
    func changeColor() {
        
        let redValue: Double = Double(redTextField.text ?? "") ?? randomColorComponent()
            let greenValue: Double = Double(greenTextField.text ?? "") ?? randomColorComponent()
            let blueValue: Double = Double(bluetextField.text ?? "") ?? randomColorComponent()
        
        colorBox.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
    }

}

