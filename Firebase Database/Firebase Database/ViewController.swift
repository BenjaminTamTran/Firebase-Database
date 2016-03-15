//
//  ViewController.swift
//  Firebase Database
//
//  Created by Tran Huu Tam on 3/15/16.
//  Copyright © 2016 The Simple Studio. All rights reserved.
//

import UIKit

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
        return true
    }

    @IBAction func runAciton(sender: AnyObject) {
        
    }
}

