//
//  RegisterField.swift
//  Login
//
//  Created by Arpik Sargsyan on 10/4/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit

class RegisterField: UITextField {

    override func awakeFromNib() {
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 5
        layer.shadowColor = UIColor.black.cgColor
    }
}
