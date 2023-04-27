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

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setups
    
    //MARK: - Actions
    

    //MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .black
    }
    
    private func setupHierarchy() {
        view.addSubview(background)
        view.addSubview(ofLoginLabel)
        view.addSubview(loginTextField)
    }
    
    private func setupLayout() {
    }

}

//MARK: - Actions
