//
//  SecondViewController.swift
//  Login
//
//  Created by Arpik Sargsyan on 10/1/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {
    
    private let isLoggedInKey = "isLoggedIn"
    
    @IBOutlet weak var userWelcome: UILabel!
    
    @IBAction func logoutAction() {
        navigationController?.popViewController(animated: true)
        UserDefaults.standard.removeObject(forKey: isLoggedInKey)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let welcomingText = "Welcome \(Registration.username)!"
        userWelcome.text = welcomingText
    }
}
