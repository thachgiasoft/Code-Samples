//
//  AuthViewController.swift
//  dashboard-demo
//
//  Created by atikhonov on 21.02.2020.
//  Copyright © 2020 atikhonov. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController, LoginView {
    
    var onCompleteAuth: (() -> Void)?
    var onSignUpButtonTap: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Auth"
    }
    
    deinit {
        print("deinit AuthViewController")
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        onCompleteAuth?()
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        onSignUpButtonTap?()
    }
}


