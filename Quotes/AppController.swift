//
//  AppController.swift
//  Quotes
//
//  Created by Julian on 12.01.22.
//

import UIKit


final class AppController {
    
    //MARK: - Properties
    
    static let shared = AppController()
    
    private var window: UIWindow!
    
    var rootViewController: UIViewController? {
        didSet {
            if let vc = rootViewController {
                window.rootViewController = vc
            }
        }
    }
    
    //MARK: - Functions
    
    func showInitialView(window: UIWindow?) {
        
        guard let window = window else { return }
        
        self.window = window
        window.backgroundColor = .white
        
        updateRootVC()
        
        window.makeKeyAndVisible()
    }
    
    func updateRootVC() {
                
        let userDefaults = UserDefaults.standard
        let loginState = userDefaults.bool(forKey: "loginState")
        
        if loginState == true {
            
            //User is logged in
            rootViewController = HomeViewController()
        } else {
            
            //User is not logged in
            rootViewController = UINavigationController(rootViewController: SignUpViewController())
        }
    }
}
