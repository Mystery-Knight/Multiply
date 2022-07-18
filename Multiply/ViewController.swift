//
//  ViewController.swift
//  Multiply
//
//  Created by DPI STUDENT 9 on 6/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textFeild2: UITextField!
    @IBOutlet weak var operatorLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = " "
    }
    @IBAction func onCalculatePress() {
        textField1.resignFirstResponder()
        textFeild2.resignFirstResponder()
        var result = 0
        if textField1.text == "" || textFeild2.text == "" {
            return
        }
        let num1 = Int(textField1.text!)!
        let num2 = Int(textFeild2.text!)!
        
        let selectedSegment = segmentedControl.selectedSegmentIndex
        
        switch selectedSegment {
        case 0:
            result = num1 * num2
        case 1:
            if num1 == 0 && num2 == 3 {
                    view.backgroundColor = .black
                    Image.image = UIImage(named: "Xover3eye")
                    resultLabel.textColor = .white
            }
            result = num1 / num2
        case 2:
            result = num1 + num2
        default:
            result = num1 - num2
        }
       if num1 == 0 && num2 == 3 && selectedSegment == 1 {
           resultLabel.text = "X/3"
        }else{
        resultLabel.text = result.description
        }
        if result % 2 == 0 {
            print("even")
        }
        else {
            print("odd")
        }
        if result == -10 {
            view.backgroundColor = .black
            Image.image = UIImage(named: "redEyes")
            resultLabel.textColor = .white
        }
        textField1.text = ""
        textFeild2.text = ""
    }
    @IBAction func segmentedControlValueChanged() {
        let selectedSegment = segmentedControl.selectedSegmentIndex
        
        if selectedSegment == 0 {
            operatorLabel.text = "*"
        } else if selectedSegment == 1 {
            operatorLabel.text = "/"
        } else if selectedSegment == 2 {
            operatorLabel.text = "+"
        } else {
            operatorLabel.text = "-"
        }

    }
   
}



