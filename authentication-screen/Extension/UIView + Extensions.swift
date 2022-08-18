//
//  UIView + Extensions.swift
//  authentication-screen
//
//  Created by Артем Галай on 18.08.22.
//

import UIKit

extension UIView {
    convenience init(layer: CGFloat) {
        self.init()
        self.layer.borderWidth = layer
        self.layer.borderColor = UIColor.darkGray.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
}

