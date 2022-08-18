//
//  UITextField + Extension.swift
//  authentication-screen
//
//  Created by Артем Галай on 17.08.22.
//

import UIKit

extension UITextField {
    convenience init(placeholder: String, isSecureTextEntry: Bool) {
        self.init()
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureTextEntry
        text = ""
        textAlignment = .center
        backgroundColor = .white
        layer.cornerRadius = 25
        translatesAutoresizingMaskIntoConstraints = false
    }

    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 40, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
