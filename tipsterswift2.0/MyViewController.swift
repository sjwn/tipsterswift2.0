//
//  ViewController.swift
//  tipsterswift2.0
//
//  Created by samantha wong on 10/14/15.
//  Copyright © 2015 samantha wong. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var numberOfPeopleField: UITextField!

    

        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            tipLabel.backgroundColor = UIColor.blueColor()
            
            numberOfPeopleField.text = "1"
            tipLabel.text = "0.00"
            totalLabel.text = "0.00"
        }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    
    
    @IBAction func didTapOnScreen(sender: AnyObject) {
        
        self.view.endEditing(true)
        
    }
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
      
        let tipPercentages = [0.10, 0.15, 0.18, 0.20]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let amount = billField.text
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        var numberOfPeople = NSString(string: numberOfPeopleField.text!).doubleValue

        
        if (numberOfPeople < 1) {
            numberOfPeople = 1
        }
        
        let tipAmount = billAmount * tipPercentage
        
        let total = billAmount + tipAmount;
      
        
        tipLabel.text = "\(tipAmount)"
        
        totalLabel.text = "\(total)"
        
        
        tipLabel.text = "\(tipAmount)"
        
        print(tipAmount)
        }
    
    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
    

        // 
        
        
    }
    
    
    
}
