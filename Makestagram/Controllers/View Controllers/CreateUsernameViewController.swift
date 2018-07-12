//
//  ViewController.swift
//  Makestagram
//
//  Created by Arya Gharib on 7/8/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase
import FirebaseAuth


class CreateUsernameViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 6
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        guard let firUser = Auth.auth().currentUser, let username = usernameTextField.text, !username.isEmpty else { return }
        UserService.create(firUser, username: username) { (user) in
            guard let user = user else { return }
            User.setCurrent(user)
            let initialViewController = UIStoryboard.initialViewController(for: .main)
            self.view.window?.rootViewController = initialViewController
            self.view.window?.makeKeyAndVisible()
        }
        
    }
    


}

