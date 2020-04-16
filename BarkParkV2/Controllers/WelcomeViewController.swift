//
//  ViewController.swift
//  BarkParkV2
//
//  Created by Hunter Schoening on 4/14/20.
//  Copyright © 2020 Hunter Schoening. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        registerButton.layer.cornerRadius = registerButton.frame.size.height / 2
        
        loginButton.layer.cornerRadius = loginButton.frame.size.height / 2
    }


}

