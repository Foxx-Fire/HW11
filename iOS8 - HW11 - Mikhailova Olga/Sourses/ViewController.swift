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
    }
    
    private func setupLayout() {
    }

}

//MARK: - Actions
