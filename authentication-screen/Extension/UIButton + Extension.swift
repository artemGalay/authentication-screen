//
//  UIButton + Extension.swift
//  authentication-screen
//
//  Created by Артем Галай on 17.08.22.
//

import UIKit

extension UIButton {
    func addRightImage(image: UIImage, offset: CGFloat) {
        self.setImage(image, for: .normal)
        self.imageView?.translatesAutoresizingMaskIntoConstraints = false
        self.imageView?.centerYAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>, constant: <#T##CGFloat#>)
    }
}
