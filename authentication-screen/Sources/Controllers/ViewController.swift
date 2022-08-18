//
//  ViewController.swift
//  authentication-screen
//
//  Created by Артем Галай on 17.08.22.
//

import UIKit
import SnapKit

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
        setupButtons()
        setupHierarchy()
        setConstraints()
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
        backgroundView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }

        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(60)
            make.centerX.equalToSuperview()
        }

        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(320)
            make.height.equalTo(50)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(320)
            make.height.equalTo(50)
        }

        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(60)
            make.centerX.equalToSuperview()
            make.width.equalTo(320)
            make.height.equalTo(50)
        }

        forgotButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }

        lineLeftView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-220)
            make.leading.equalToSuperview().offset(40)
            make.width.equalTo(100)
            make.height.equalTo(1)
        }

        orConnectWithLabel.snp.makeConstraints { make in
            make.centerY.equalTo(lineLeftView)
            make.centerX.equalTo(view.snp.centerX)
        }

        lineRightView.snp.makeConstraints { make in
            make.centerY.equalTo(lineLeftView)
            make.trailing.equalToSuperview().offset(-40)
            make.width.equalTo(100)
            make.height.equalTo(1)
        }

        facebookButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-130)
            make.leading.equalToSuperview().offset(20)
            make.width.equalTo(180)
            make.height.equalTo(50)
        }

        twitterButton.snp.makeConstraints { make in
            make.centerY.equalTo(facebookButton)
            make.trailing.equalToSuperview().offset(-20)
            make.width.equalTo(180)
            make.height.equalTo(50)
        }

        facebookImage.snp.makeConstraints { make in
            make.centerY.equalTo(facebookButton)
            make.leading.equalTo(facebookButton).offset(10)
            make.width.height.equalTo(30)
        }

        twitterImage.snp.makeConstraints { make in
            make.centerY.equalTo(twitterButton)
            make.leading.equalTo(twitterButton).offset(10)
            make.width.height.equalTo(30)
        }

        dontHaveAccountLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-70)
            make.leading.equalToSuperview().offset(80)
        }

        singUpButton.snp.makeConstraints { make in
            make.centerY.equalTo(dontHaveAccountLabel)
            make.leading.equalTo(dontHaveAccountLabel.snp.trailing).offset(20)
        }
    }
}
