//
//  ViewController.swift
//  TestApp
//
//  Created by Никита Кожевников on 09/08/2019.
//  Copyright © 2019 Beet inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
       NameLabel.text = textField.text
    }
    
    // MARK: Properties
    @IBOutlet weak var nameTextView: UITextField!
    @IBOutlet weak var NameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Handle the text field's user input trough delegate callbacks
        nameTextView.delegate = self
    }

    // MARK: actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        NameLabel.text = "Заголовок"
    }
    
}

