//
//  RegisterViewController.swift
//  BarkParkV2
//
//  Created by Hunter Schoening on 4/14/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text, let confirmPassword = confirmPasswordTextfield.text {
            if password == confirmPassword {
                Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                    if let e = error {
                        
                        let alert = UIAlertController(title: "Registration Error", message: e.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                        
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        
                        self.present(alert, animated: true, completion: nil)
                        
                    } else {
                        //Navigate to Profile Setup View Controller
                        print("Registration Successful")
                        self.performSegue(withIdentifier: "RegisterToProfile", sender: self)
                    }
                }
            } else {
                let alert = UIAlertController(title: "Registration Error", message: "Passwords do not match", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
