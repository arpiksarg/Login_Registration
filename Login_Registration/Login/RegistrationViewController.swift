//
//  RegistrationViewController.swift
//  Login
//
//  Created by Arpik Sargsyan on 10/2/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    @IBAction func backToLogin() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitAction(_ sender: Any) {
        if !usernameField.text!.isEmpty &&
           !emailField.text!.isEmpty &&
           !passwordField.text!.isEmpty &&
            !confirmPasswordField.text!.isEmpty {
           if passwordField.text == confirmPasswordField.text {
                Registration.username = usernameField.text!
                Registration.email = emailField.text!
                Registration.password = passwordField.text!
           
            backToLogin()
        } else {
            presentAlert(firstTitle: "Error!",
                         secondTitle: "Something Wrong",
                         message: "Please fill in all fields")
            }
        }
    }
    
}
