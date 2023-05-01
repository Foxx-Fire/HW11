//
//  Extentions.swift
//  iOS8 - HW11 - Mikhailova Olga
//
//  Created by mbpro2.0/16/512 on 27.04.2023.
//

import UIKit

//MARK: - Extention

extension UITextField {
    func setLeftIcon(image: UIImage, color: UIColor) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.tintColor = color
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

extension UITextField {
    func setRightIcon(image: UIImage, color: UIColor) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.tintColor = color
        iconView.image = image
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}

extension UIButton {
    func addMediaIcon(image: UIImage, imageName: UIImage, color: UIColor) {
        let i = UIImageView()
        i.image = image
        i.tintColor = color


        let iconContainerView: UIEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 100)
        imageEdgeInsets = iconContainerView
    }
}
                            
extension UITextField {
    func setAttributedText(string: String, color: UIColor) {
        let attributedString = NSAttributedString(string: string, attributes: [.foregroundColor: color])
        self.attributedText = attributedString
    }
}
