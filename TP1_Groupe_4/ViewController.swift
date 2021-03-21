//
//  ViewController.swift
//  TP1_Groupe_4
//
//  Created by RAMAHATSANGIARISON Hobiniaina Mirado on 21/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultField: UITextField!
    
    var firstNumber: Int? = 0
    var secondNumber: Int? = 0
    var resultNumber = 0
    var operation = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn0(_ sender: UIButton) {
        textField.text = textField.text! + "0"
    }
    
    @IBAction func betn1(_ sender: UIButton) {
        textField.text = textField.text! + "1"
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        textField.text = textField.text! + "2"
    }

    @IBAction func btn3(_ sender: UIButton) {
        textField.text = textField.text! + "3"
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        textField.text = textField.text! + "4"
    }
    
    @IBAction func btn5(_ sender: UIButton) {
        textField.text = textField.text! + "5"
    }
    
    @IBAction func btn6(_ sender: UIButton) {
        textField.text = textField.text! + "6"
    }
    
    @IBAction func btn7(_ sender: UIButton) {
        textField.text = textField.text! + "7"
    }
    
    @IBAction func btn8(_ sender: UIButton) {
        textField.text = textField.text! + "8"
    }
    
    @IBAction func btn9(_ sender: UIButton) {
        textField.text = textField.text! + "9"
    }
    
    @IBAction func btnDiv(_ sender: UIButton) {
        operation = "/"
        textField.text = textField.text! + operation
    }
    
    @IBAction func btnMulti(_ sender: UIButton) {
        operation = "*"
        textField.text = textField.text! + operation
    }
    
    @IBAction func btnMin(_ sender: UIButton) {
        operation = "-"
        textField.text = textField.text! + operation
    }
    
    @IBAction func btnPlus(_ sender: UIButton) {
        operation = "+"
        textField.text = textField.text! + operation
    }
    
    @IBAction func btnCe(_ sender: UIButton) {
        clear()
    }
    
    @IBAction func btnEquals(_ sender: Any) {
        let value: [String] = textField.text!.components(separatedBy: operation)
        firstNumber = Int(value[0])
        secondNumber = Int(value[1])
        
        switch operation {
        case "+":
            resultNumber = firstNumber!+secondNumber!
            resultField.text = String(resultNumber)
        case "-":
            resultNumber = firstNumber!-secondNumber!
            resultField.text = String(resultNumber)
        case "*":
            resultNumber = firstNumber!*secondNumber!
            resultField.text = String(resultNumber)
        case "/":
            resultNumber = firstNumber!/secondNumber!
            resultField.text = String(resultNumber)
        default:
            textField.text = "ERROR"
        }
    }
    
    func clear() {
        textField.text = ""
        resultField.text = ""
    }
}

