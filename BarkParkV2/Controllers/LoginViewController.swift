//
//  LoginViewController.swift
//  BarkParkV2
//
//  Created by Hunter Schoening on 4/14/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
                if let e = error {
                    
                    let alert = UIAlertController(title: "Sign In Error", message: e.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                    
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    
                    self.present(alert, animated: true, completion: nil)
                    
                } else {
                    //Navigate to Home View Controller
                    self.performSegue(withIdentifier: "LoginToHome", sender: self)
                    print("Sign in successful")
                }
            }
        }
    }
}
