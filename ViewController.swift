//
//  ViewController.swift
//  loanCalculator
//
//  Created by Sierra Goodman on 11/1/20.
//  Copyright © 2020 Sierra Goodman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loanAmount: UITextField!
    @IBOutlet weak var numofPayments: UITextField!
    @IBOutlet weak var interestRate: UITextField!
    @IBOutlet weak var total: UITextField!
    
    @IBAction func calculator(_ sender: Any) {
        if numofPayments.text == "" ||
        loanAmount.text == "" ||
            interestRate.text == ""{
            total.text = "error"
            return
        }
        
        let payments = Double(numofPayments.text!)!
        let rate = Double(interestRate.text!)!
        let _loan = Double (loanAmount.text!)!
        let totalFromCalc = paymentCalculator(payments, rate, _loan: _loan)
        total.text = "$" + totalFromCalc
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        func paymentCalculator(_ months: Double, _ apr: Double, _loan: Double)-> String{
            var payment = 0.0
            payment = (pow((1 + (apr / 100)), (1 * months)) / (months)) * _loan
            return "\(round(100*payment)/100 )"
        }
    override var
        supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask(rawValue: (UIInterfaceOrientationMask.portrait.rawValue | UIInterfaceOrientationMask.landscapeLeft.rawValue | UIInterfaceOrientationMask.landscapeRight.rawValue))
        }

}

