//
//  LoginView.swift
//  AppSnapshotTesting
//
//  Created by Admin on 20/11/22.
//

import UIKit

protocol LoginViewProtocol {
    func tapLoginButton()
}

class LoginView: UIView {
    
    
    var delegate:LoginViewProtocol?
    
    public func delegate(delegate:LoginViewProtocol){
        self.delegate = delegate
    }

    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textColor = .blue
        label.textAlignment = .center
        return label
    }()
    
    lazy var emailTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email"
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.isAccessibilityElement = true
        textField.accessibilityIdentifier = "email"
        return textField
    }()
    
    lazy var passwordTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Senha"
        textField.isSecureTextEntry = true
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.isAccessibilityElement = true
        textField.accessibilityIdentifier = "password"
        return textField
    }()
    
    lazy var loginButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Acessar", for: .normal)
        button.backgroundColor = .blue
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.addTarget(self, action: #selector(self.tapLoginButton), for: .touchUpInside)
        button.isAccessibilityElement = true
        button.accessibilityIdentifier = "login"
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubViews()
        self.configConstraintTitleLabel()
        self.configConstraintEmailTextField()
        self.configConstraintPasswordTextField()
        self.configConstraintLoginButton()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tapLoginButton(){
        self.delegate?.tapLoginButton()
    }
    
    private func addSubViews(){
        self.addSubview(self.titleLabel)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.loginButton)
    }
    
    private func configConstraintTitleLabel(){
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    private func configConstraintEmailTextField(){
        NSLayoutConstraint.activate([
            self.emailTextField.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 100),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configConstraintPasswordTextField(){
        NSLayoutConstraint.activate([
            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 5),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configConstraintLoginButton(){
        NSLayoutConstraint.activate([
            self.loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 20),
            self.loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
