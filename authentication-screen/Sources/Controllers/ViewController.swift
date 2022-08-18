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

    private let loginLabel = UILabel(text: "Login", font: UIFont.boldSystemFont(ofSize: 40))
    private let orConnectWithLabel = UILabel(text: "or connect with", font: UIFont.boldSystemFont(ofSize: 18))
    private let dontHaveAccountLabel = UILabel(text: "Dont have account?", font: UIFont.boldSystemFont(ofSize: 18))

    private let loginTextField = UITextField(placeholder: "keanureeves01", isSecureTextEntry: false)
    private let imageLeftLogin = UIImage(named: "person")
    private let imageRightLogin = UIImage(named: "checkmarkCircle")

    private let passwordTextField = UITextField(placeholder: "Password", isSecureTextEntry: true)
    private let imagePassword = UIImage(named: "lock")

    private let loginButton = UIButton(backgroundColor: .systemPurple,
                                       titleLabel: .monospacedDigitSystemFont(ofSize: 18, weight: .bold))

    private let forgotButton = UIButton(backgroundColor: .clear,
                                        titleLabel: .boldSystemFont(ofSize: 18))

    private let facebookButton = UIButton(backgroundColor: .systemBlue,
                                          titleLabel: .monospacedDigitSystemFont(ofSize: 15, weight: .bold))

    private let twitterButton = UIButton(backgroundColor: .blue,
                                         titleLabel: .monospacedDigitSystemFont(ofSize: 15, weight: .bold))

    private let singUpButton = UIButton(backgroundColor: .clear, titleLabel: .boldSystemFont(ofSize: 18))

    private let lineLeftView = UIView(layer: 5)
    private let lineRightView = UIView(layer: 5)

    private let facebookImage = UIImageView(image: UIImage(named: "facebook"))
    private let twitterImage = UIImageView(image: UIImage(named: "twitter"))



//MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setConstraints()
        setupButtons()
    }

//MARK: - Setup

    private func setupButtons() {
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)

        forgotButton.setTitle("Forgot your password?", for: .normal)
        forgotButton.setTitleColor(UIColor.white, for: .normal)

        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(UIColor.white, for: .normal)

        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(UIColor.white, for: .normal)

        singUpButton.setTitle("Sing up", for: .normal)
        singUpButton.setTitleColor(UIColor.blue, for: .normal)
    }

    private func setupHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(loginLabel)

        view.addSubview(loginTextField)
        loginTextField.setLeftIcon(imageLeftLogin!)
        loginTextField.setRightIcon(imageRightLogin!)

        view.addSubview(passwordTextField)
        passwordTextField.setLeftIcon(imagePassword!)

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
