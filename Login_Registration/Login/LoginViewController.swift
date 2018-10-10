//
//  ViewController.swift
//  Login
//
//  Created by Arpik Sargsyan on 9/27/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == usernameField {
            if !(textField.text!.isEmpty) {
                passwordField.becomeFirstResponder()
            }
        } else if textField == passwordField {
            if !(textField.text!.isEmpty) {
                usernameField.becomeFirstResponder()
            }
        }
        return true
    }
    
    @IBAction func signUpAction() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "RegistrationVC") as! RegistrationViewController
        navigationController?.setViewControllers([vc], animated: true)
    }
    
    @IBAction func tapToLogin() {
        if usernameField.text!.isEmpty || passwordField.text!.isEmpty {
            presentAlert(firstTitle: "Error",
                         secondTitle: "Ok",
                         message: "Please fill in both fields")
        }
        if isValidUser() {
            let vc = storyboard!.instantiateViewController(withIdentifier: "LogoutViewController")
            navigationController?.pushViewController(vc, animated: true)
        } else {
            presentAlert(firstTitle: "Something wrong!",
                         secondTitle: "Ok",
                         message: "Invalid username or password")
        }
    }
  
    private func isValidUser() -> Bool {
        var isValid = false
        if usernameField.text == Registration.username && passwordField.text == Registration.password {
            isValid = true
        }
        return isValid
    }
    
    @IBAction func backgroudTapAction(_ sender: UITapGestureRecognizer) {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
}
