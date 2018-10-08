//
//  UiViewControllerExtentions.swift
//  Login
//
//  Created by Arpik Sargsyan on 10/1/18.
//  Copyright © 2018 Arpik Sargsyan. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentAlert(firstTitle: String, secondTitle: String, message: String) {
        let alertController = UIAlertController(title: firstTitle, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: secondTitle, style: .default) { (action:UIAlertAction) in
            
        }
        alertController.addAction(ok)
        present(alertController, animated: true, completion: nil)
    }
}
