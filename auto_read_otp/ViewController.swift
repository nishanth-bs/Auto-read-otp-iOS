//
//  ViewController.swift
//  auto_read_otp
//
//  Created by Nishanth B S on 21/01/19.
//  Copyright © 2019 Nishanth B S. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var otptextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otptextField.delegate = self
        if #available(iOS 12.0, *) {
            otptextField.textContentType = .oneTimeCode
        } else {
            // Fallback on earlier versions
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        otptextField.resignFirstResponder()
        return true
    }
}

