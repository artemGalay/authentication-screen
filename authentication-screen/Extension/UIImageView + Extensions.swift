//
//  UIImageView + Extensions.swift
//  authentication-screen
//
//  Created by Артем Галай on 18.08.22.
//

import UIKit

extension UIImageView {

    convenience init(image: UIImage?) {
        self.init()
        self.image = image
        layer.cornerRadius = 15
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}


