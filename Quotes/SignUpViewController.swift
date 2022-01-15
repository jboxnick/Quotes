//
//  SignUpViewController.swift
//  Quotes
//
//  Created by Julian on 12.01.22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //MARK: - Outlets
    
    private let emailTextField: UITextField = {
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "your email-adress"
        textField.clearButtonMode = .whileEditing
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        textField.keyboardType = .emailAddress
                
        return textField
    }()
        
    private let passwordTextField: UITextField = {
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "your password"
        textField.clearButtonMode = .whileEditing
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    private let signUpButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        
        return button
    }()
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        setupNavigation()
        setupButtons()
        setupTextFields()
    }
    
    //MARK: - Setup Functions
    
    private func setupViews() {
        
        title = "Sign Up"
        
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signUpButton)
    }
    
    private func setupConstraints() {
        
        //emailTextField
        
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        //passwordTextField
        
        passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor).isActive = true
        
        //signUpButton
        
        signUpButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor, constant: 65).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    private func setupNavigation() {
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = .magenta
    }
    
    private func setupButtons() {
        
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    
    private func setupTextFields() {
        
    }
    
    //MARK: - @objc Functions
    
    @objc func signUpButtonTapped() {
        
        print(#function)
        
        
        //Create a fake user. Safe this fake user local on the device. Try to login with this fake user again.
        //-> Add Firebase
        
    }
    
    //MARK: - Navigation
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    deinit {
        print("VC deinit: \(self)")
    }
}
