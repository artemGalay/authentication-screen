//
//  ViewController.swift
//  authentication-screen
//
//  Created by Артем Галай on 17.08.22.
//

import UIKit

class ViewController: UIViewController {

    private let backgroundView: UIImageView = {
        let imageViewBackground = UIImageView(frame: UIScreen.main.bounds)
        imageViewBackground.image = UIImage(named: "background")
        imageViewBackground.translatesAutoresizingMaskIntoConstraints = false
        return imageViewBackground
    }()

    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 40, weight: .bold)
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

    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemPurple
        button.layer.cornerRadius = 25
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = .monospacedDigitSystemFont(ofSize: 18, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let forgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let lineLeftView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 5
        view.layer.borderColor = UIColor.darkGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let orConnectWithLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let lineRightView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 5
        view.layer.borderColor = UIColor.darkGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
        button.setTitle("Facebook", for: .normal)
        button.titleLabel?.font = .monospacedDigitSystemFont(ofSize: 15, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let twitterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 25
        button.setTitle("Twitter", for: .normal)
        button.titleLabel?.font = .monospacedDigitSystemFont(ofSize: 15, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let facebookImage: UIImageView = {
        let image = UIImage(named: "facebook")
        let imageView = UIImageView(image: image)
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let twitterImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "twitter")
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let dontHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let singUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sing up", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()





//MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setConstraints()
    }

//MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotButton)
        view.addSubview(lineLeftView)
        view.addSubview(orConnectWithLabel)
        view.addSubview(lineRightView)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(facebookImage)
        view.addSubview(twitterImage)
        view.addSubview(dontHaveAccountLabel)
        view.addSubview(singUpButton)
    }

    private func setConstraints() {


        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])

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

        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 60),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 320),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])

        NSLayoutConstraint.activate([
            forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            forgotButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            lineLeftView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -220),
            lineLeftView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            lineLeftView.widthAnchor.constraint(equalToConstant: 100),
            lineLeftView.heightAnchor.constraint(equalToConstant: 1)
        ])

        NSLayoutConstraint.activate([
            orConnectWithLabel.centerYAnchor.constraint(equalTo: lineLeftView.centerYAnchor),
            orConnectWithLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            lineRightView.centerYAnchor.constraint(equalTo: lineLeftView.centerYAnchor),
            lineRightView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            lineRightView.widthAnchor.constraint(equalToConstant: 100),
            lineRightView.heightAnchor.constraint(equalToConstant: 1)
        ])

        NSLayoutConstraint.activate([
            facebookButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -130),
            facebookButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            facebookButton.widthAnchor.constraint(equalToConstant: 180),
            facebookButton.heightAnchor.constraint(equalToConstant: 50)
        ])

        NSLayoutConstraint.activate([
            twitterButton.centerYAnchor.constraint(equalTo: facebookButton.centerYAnchor),
            twitterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            twitterButton.widthAnchor.constraint(equalToConstant: 180),
            twitterButton.heightAnchor.constraint(equalToConstant: 50)
        ])

        NSLayoutConstraint.activate([
            facebookImage.centerYAnchor.constraint(equalTo: facebookButton.centerYAnchor),
            facebookImage.leadingAnchor.constraint(equalTo: facebookButton.leadingAnchor, constant: 10),
            facebookImage.widthAnchor.constraint(equalToConstant: 30),
            facebookImage.heightAnchor.constraint(equalToConstant: 30)
        ])

        NSLayoutConstraint.activate([
            twitterImage.centerYAnchor.constraint(equalTo: twitterButton.centerYAnchor),
            twitterImage.leadingAnchor.constraint(equalTo: twitterButton.leadingAnchor, constant: 10),
            twitterImage.widthAnchor.constraint(equalToConstant: 30),
            twitterImage.heightAnchor.constraint(equalToConstant: 30)
        ])

        NSLayoutConstraint.activate([
            dontHaveAccountLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            dontHaveAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80)
        ])

        NSLayoutConstraint.activate([
            singUpButton.centerYAnchor.constraint(equalTo: dontHaveAccountLabel.centerYAnchor),
            singUpButton.leadingAnchor.constraint(equalTo: dontHaveAccountLabel.trailingAnchor, constant: 20)
        ])




}
}



