//
//  ViewController.swift
//  authentication-screen
//
//  Created by Артем Галай on 17.08.22.
//

import UIKit

class ViewController: UIViewController {

    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

//MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackground()
        setupHierarchy()
        setConstraints()

    }

//MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(loginLabel)
    }

    private func setConstraints() {

        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

}
}



