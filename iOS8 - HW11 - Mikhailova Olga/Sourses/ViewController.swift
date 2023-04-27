//
//  ViewController.swift
//  iOS8 - HW11 - Mikhailova Olga
//
//  Created by mbpro2.0/16/512 on 26.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    
    private lazy var background: UIImageView = {
        let background = UIImageView()
        background.image = UIImage(named: "background")
        
        // так верно? я про расположение на экране
        
        background.contentMode = .scaleAspectFit
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    private lazy var ofLoginLabel: UILabel = {
        let ofLoginLabel = UILabel()
        ofLoginLabel.text = "Login"
        ofLoginLabel.textAlignment = .center
        ofLoginLabel.textColor = UIColor.systemIndigo
        ofLoginLabel.font = UIFont(name: "Avenir-Next", size: 31)
        
        //а как избежать повторения 31 и 31?
        
        ofLoginLabel.font = UIFont.systemFont(ofSize: 31, weight: .bold)
        ofLoginLabel.numberOfLines = 1
        ofLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        return ofLoginLabel
    }()
    
    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.layer.cornerRadius = 18
        loginTextField.placeholder = "keanureeves01"
        loginTextField.textAlignment = .center
        loginTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        loginTextField.textColor = UIColor.systemGray3
        loginTextField.setLeftIcon(image: UIImage(systemName: "person") ?? UIImage(), color: UIColor.gray)
        loginTextField.setRightIcon(image: UIImage(systemName: "checkmark.circle.fill") ?? UIImage(), color: UIColor.green)
        loginTextField.backgroundColor = .white
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        return loginTextField
    }()
    
    private lazy var passwordTextField:  UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.layer.cornerRadius = 18
        passwordTextField.placeholder = "Password"
        passwordTextField.textAlignment = .center
        passwordTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        passwordTextField.textColor = UIColor.systemGray3
        passwordTextField.setLeftIcon(image: UIImage(systemName: "lock") ?? UIImage(), color: UIColor.gray)
        passwordTextField.backgroundColor = .white
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextField
    }()
    
    private lazy var loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.backgroundColor = .systemIndigo
        loginButton.layer.cornerRadius = 18
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "Avenir-Next", size: 12)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        loginButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()
    
    private lazy var remindTextField: UITextField = {
        let remindTextField = UITextField()
        remindTextField.text = "Forgot your password?"
        remindTextField.textColor = UIColor.systemBlue
        remindTextField.font = UIFont(name: "Avenir-Next", size: 10)
        remindTextField.font = UIFont.systemFont(ofSize: 10, weight: .light)
        remindTextField.translatesAutoresizingMaskIntoConstraints = false
        return remindTextField
    }()
    
    

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
   //MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .black
    }
    
    private func setupHierarchy() {
        view.addSubview(background)
        view.addSubview(ofLoginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(remindTextField)
        
    }
    
    private func setupLayout() {
    }

}

//MARK: - Actions
