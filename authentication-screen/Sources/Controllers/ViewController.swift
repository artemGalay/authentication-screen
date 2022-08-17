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

    private let loginTextField: UITextField = {

        let textField = UITextField()
        textField.textAlignment = .center
        textField.text = ""
        textField.placeholder = "keanureeves01"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.translatesAutoresizingMaskIntoConstraints = false
        let imageLeft = UIImage(named: "person")
        textField.setLeftIcon(imageLeft!)

        let imageRight = UIImage(named: "checkmarkCircle")
        textField.setRightIcon(imageRight!)

        return textField
    }()

    private let passwordTextField: UITextField = {

        let textField = UITextField()
        textField.textAlignment = .center
        textField.text = ""
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false

        let image = UIImage(named: "lock")
        textField.setLeftIcon(image!)

        return textField
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
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
    }

    private func setConstraints() {

        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            loginTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 30),
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.widthAnchor.constraint(equalToConstant: 320),
            loginTextField.heightAnchor.constraint(equalToConstant: 50)
        ])

        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.widthAnchor.constraint(equalToConstant: 320),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        ])



}
}



