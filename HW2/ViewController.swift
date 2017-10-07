//
//  ViewController.swift
//  HW2
//
//  Created by Abhi Vora on 10/6/17.
//  Copyright © 2017 Abhi Vora. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        //Handle the text input from the user using delegate callbacks
        nameTextField.delegate = self
        
        // self means View Controller Class because it is refrenced inside the scope of the Class.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        
    }
    
    //MARK: Actions
    
@IBAction func setDefualtLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }

}
    


