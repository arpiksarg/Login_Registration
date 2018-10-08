//
//  Registration.swift
//  Login
//
//  Created by Arpik Sargsyan on 10/4/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit

class Registration {
    
    struct Key {
        static let username = "username"
        static let password = "accountPassword"
        static let email = "userEmail"
    }
    
    static var username: String {
        set {
            UserDefaults.standard.set(newValue, forKey: Key.username)
        }
        get {
            return UserDefaults.standard.object(forKey: Key.username) as? String ?? ""
        }
    }
    
    static var password: String {
        set {
            UserDefaults.standard.set(newValue, forKey: Key.password)
        }
        get {
            return UserDefaults.standard.object(forKey: Key.password) as? String ?? ""
        }
    }
    
    static var email: String {
        set {
            UserDefaults.standard.set(newValue, forKey: Key.email)
        }
        get {
            return UserDefaults.standard.object(forKey: Key.email) as? String ?? ""
        }
    }
}
