//
//  ViewController.swift
//  counter
//
//  Created by GEU on 04/09/25.
//

import UIKit

class ViewController: UIViewController {
    var status: Bool = false
    var counter: Int = 0
    @IBOutlet weak var counterlabel: UILabel!
    @IBAction func incrementCounterButton(_ sender: Any) {
        if status{
            updateCounterLabel()
        }
    }
    @IBAction func startButton(_ sender: Any) {
        startapp()
    }
    @IBAction func stopButton(_ sender: Any) {
        stopapp()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func updateCounterLabel() {
        
        counter += 1
        counterlabel.text = "\(counter)"
        
    }
    func startapp() {
        
        status = true
    }
    func stopapp() {
        status = false
    }


}

