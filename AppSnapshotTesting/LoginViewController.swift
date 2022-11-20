//
//  ViewController.swift
//  AppSnapshotTesting
//
//  Created by Admin on 20/11/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView:LoginView = LoginView()
    let homeViewController = HomeViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginView.delegate(delegate: self)
    }
    
    override func loadView() {
        super.loadView()
        self.view = self.loginView
    }
}

extension LoginViewController:LoginViewProtocol {
    func tapLoginButton() {
        self.navigationController?.pushViewController(self.homeViewController, animated: true)
    }
}

