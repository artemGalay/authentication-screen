//
//  UIButton + Extensions.swift
//  authentication-screen
//
//  Created by Артем Галай on 18.08.22.
//

import UIKit

extension UIButton {
    convenience init(backgroundColor: UIColor, titleLabel: UIFont) {
        self.init(type: .system)
        self.titleLabel?.font = titleLabel
        self.backgroundColor = backgroundColor
        layer.cornerRadius = 25
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        translatesAutoresizingMaskIntoConstraints = false
    }    
}
