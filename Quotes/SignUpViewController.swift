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
        textField.placeholder = "your email-adress"
        textField.clearButtonMode = .whileEditing
        textField.textColor = .red
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let font = UIFont(name: "Arial", size: 20)

        // Do any additional setup after loading the view.
        
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: +30).isActive = true
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
