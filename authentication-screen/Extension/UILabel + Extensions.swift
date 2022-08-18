//
//  UILabel + Extension.swift
//  authentication-screen
//
//  Created by Артем Галай on 18.08.22.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont) {
        self.init()
        self.text = text
        self.font = font
        textColor = .white
        translatesAutoresizingMaskIntoConstraints = false
    }
}

