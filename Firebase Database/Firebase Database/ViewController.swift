//
//  ViewController.swift
//  Firebase Database
//
//  Created by Tran Huu Tam on 3/15/16.
//  Copyright © 2016 The Simple Studio. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITextFieldDelegate {

    // Mark: UI's elements
    @IBOutlet weak var appNameTextField: UITextField!
    @IBOutlet weak var pathTextField: UITextField!
    @IBOutlet weak var debugLoggingTextView: UITextView!
    @IBOutlet weak var runButton: UIButton!
    @IBOutlet weak var defaultValueTextField: UITextField!
    @IBOutlet weak var fieldListTextField: UITextField!
    
    // Mark: Application's life cirlce
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
        runButton.enabled = false
        pathTextField.enabled = false
        debugLoggingTextView.editable = false
        defaultValueTextField.enabled = false
        fieldListTextField.enabled = false
        appNameTextField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark: class's private methods
    private func initialize() {
        Utility.borderRadiusView(5.0, view: runButton)
        Utility.borderRadiusView(10.0, view: debugLoggingTextView)
    }
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == appNameTextField {
            pathTextField.enabled = true
            pathTextField.becomeFirstResponder()
        }
        else if textField == pathTextField {
            fieldListTextField.enabled = true
            fieldListTextField.becomeFirstResponder()
        }
        else if textField == fieldListTextField {
            defaultValueTextField.enabled = true
            defaultValueTextField.becomeFirstResponder()
            runButton.enabled = true
        }
        else if textField == defaultValueTextField {
            runButton.enabled = true
        }
        return true
    }

    @IBAction func runAciton(sender: AnyObject) {
        let appName = appNameTextField.text!.lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "-")
        let fireBaseUrl = "https://\(appName).firebaseIO.com"
        debugLoggingTextView.text = "Trying connect to your app at \n \(fireBaseUrl)"
        let arrayField = fieldListTextField.text?.componentsSeparatedByString(",")
        let myRootRef = Firebase(url: fireBaseUrl)
        var data = Dictionary<String, String>()
        for field in arrayField! {
            data[field as String] = ""
        }
        myRootRef.childByAppendingPath(pathTextField.text)
            .childByAutoId().setValue(data)
    }
}

