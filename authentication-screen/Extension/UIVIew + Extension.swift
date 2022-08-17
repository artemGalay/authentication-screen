//
//  UIVIew + Extensian.swift
//  authentication-screen
//
//  Created by Артем Галай on 17.08.22.
//

import UIKit

extension UIView {
    func addBackground() {

        let imageViewBackground = UIImageView(frame: UIScreen.main.bounds)
        imageViewBackground.image = UIImage(named: "background")
        imageViewBackground.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(imageViewBackground)
        self.sendSubviewToBack(imageViewBackground)

        let leadingConstraint = NSLayoutConstraint(item: imageViewBackground, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0.0)
        let trailingConstraint = NSLayoutConstraint(item: imageViewBackground, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0.0)
        let topConstraint = NSLayoutConstraint(item: imageViewBackground, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0)
        let botConstraint = NSLayoutConstraint(item: imageViewBackground, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0)

        NSLayoutConstraint.activate([leadingConstraint, trailingConstraint, topConstraint, botConstraint])
    }
}
