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
    
    // тут две линии и у них выставлена длина в констрейнерах но - они на весь экран почему-то
     
     private lazy var lineViewLeft: UIView = {
         let lineViewLeft = UIView()
         lineViewLeft.backgroundColor = UIColor.systemGray5
         lineViewLeft.translatesAutoresizingMaskIntoConstraints = false
         return lineViewLeft
     }()
     
     private lazy var lineViewRight: UIView = {
         let lineViewRight = UIView()
         lineViewRight.backgroundColor = UIColor.systemGray5
         lineViewRight.translatesAutoresizingMaskIntoConstraints = false
         return lineViewRight
     }()
    
    private lazy var connectTextField: UITextField = {
        let connectTextField = UITextField()
        connectTextField.text = "or connect with"
        connectTextField.textAlignment = .center
        connectTextField.textColor = UIColor.white
        connectTextField.font = UIFont(name: "Avenir-Next", size: 10)
        connectTextField.font = UIFont.systemFont(ofSize: 10, weight: .light)
        connectTextField.translatesAutoresizingMaskIntoConstraints = false
        return connectTextField
    }()
    
    private lazy var faceBookButton: UIButton = {
        let faceBookButton = UIButton()
        faceBookButton.backgroundColor = .systemIndigo
        faceBookButton.layer.cornerRadius = 18
        faceBookButton.setTitle("Facebook", for: .normal)
        faceBookButton.setTitleColor(UIColor.white, for: .normal)
        faceBookButton.titleLabel?.font = UIFont(name: "Avenir-Next", size: 12)
        faceBookButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        faceBookButton.setImage(UIImage(named: "facebook")?.withRenderingMode(.alwaysTemplate), for: .normal)
        faceBookButton.tintColor = UIColor.white
        faceBookButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 100)
        //faceBookButton.addMediaIcon(image: UIImage(named: "facebook"), color: .white, place: faceBookButton.imageEdgeInsets) а почему так не работает?
        faceBookButton.layer.shadowColor = UIColor.black.cgColor
        faceBookButton.layer.shadowOpacity = 0.3
        faceBookButton.layer.shadowOffset = .zero
        faceBookButton.layer.shadowRadius = 10
        faceBookButton.layer.shouldRasterize = true
        faceBookButton.layer.rasterizationScale = UIScreen.main.scale
        faceBookButton.translatesAutoresizingMaskIntoConstraints = false
        return faceBookButton
    }()
    
    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton()
        twitterButton.backgroundColor = .systemBlue
        twitterButton.layer.cornerRadius = 18
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(UIColor.white, for: .normal)
        twitterButton.titleLabel?.font = UIFont(name: "Avenir-Next", size: 12)
        twitterButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        twitterButton.setImage( UIImage(named: "twitter")?.withRenderingMode(.alwaysTemplate), for: .normal)
        twitterButton.tintColor = UIColor.white
        twitterButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 100)
        twitterButton.layer.shadowColor = UIColor.black.cgColor
        twitterButton.layer.shadowOpacity = 0.3
        twitterButton.layer.shadowOffset = .zero
        twitterButton.layer.shadowRadius = 10
        twitterButton.layer.shouldRasterize = true
        twitterButton.layer.rasterizationScale = UIScreen.main.scale
        twitterButton.translatesAutoresizingMaskIntoConstraints = false
        return twitterButton
    }()
    
    private lazy var accountTextField: UITextField = {
        let accountTextField = UITextField()
        accountTextField.text = "Don't have account?"
        accountTextField.textColor = UIColor.magenta
        accountTextField.font = UIFont(name: "Avenir-Next", size: 14)
        accountTextField.font = UIFont.systemFont(ofSize: 10, weight: .light)
        accountTextField.translatesAutoresizingMaskIntoConstraints = false
        return accountTextField
    }()
    
    private lazy var signUpTextView: UITextField = {
        let signUpTextView = UITextField()
        signUpTextView.text = "Sign up"
        signUpTextView.font = UIFont(name: "Avenir-Next", size: 14)
        signUpTextView.font = UIFont.systemFont(ofSize: 10, weight: .light)
        
        // не срабатывает расширение - в чем тут мой косяк?
        
        signUpTextView.attributedText(string: signUpTextView.text ?? "" )
        signUpTextView.translatesAutoresizingMaskIntoConstraints = false
        return signUpTextView
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
        view.addSubview(lineViewLeft)
        view.addSubview(lineViewRight)
        view.addSubview(connectTextField)
        view.addSubview(faceBookButton)
        view.addSubview(twitterButton)
        view.addSubview(accountTextField)
        view.addSubview(signUpTextView)
    }
    
    private func setupLayout() {
    }

    //MARK: - Actions
   
}


