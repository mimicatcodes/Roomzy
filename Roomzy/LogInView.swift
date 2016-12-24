//
//  LogInView.swift
//  Roomzy
//
//  Created by Robert Deans on 12/23/16.
//  Copyright © 2016 Mimicatcodes. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class LogInView: UIView {
    
    lazy var emailField = UITextField()
    lazy var passwordField = UITextField()
    lazy var loginButton = UIButton()
    lazy var createAccountButton = UIButton()

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
        
        configure()
        constrain()
    }
    
    func configure() {
        
        self.backgroundColor = UIColor.cyan
        
        emailField.placeholder = "Email"
        
        passwordField.placeholder = "Password"
        passwordField.isSecureTextEntry = true
        
        loginButton.backgroundColor = UIColor.lightGray
        loginButton.contentEdgeInsets = UIEdgeInsetsMake(11, 16, 11, 16)
        loginButton.setTitle("Log in", for: .normal)
        
        createAccountButton.backgroundColor = UIColor.lightGray
        createAccountButton.contentEdgeInsets = UIEdgeInsetsMake(11, 16, 11, 16)
        createAccountButton.setTitle("Create Account", for: .normal)
        
    }
    
    func constrain() {
        addSubview(emailField)
        emailField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.8)
            $0.centerY.equalToSuperview().offset(-40)
        }
        
        addSubview(passwordField)
        passwordField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.8)
            $0.centerY.equalToSuperview().offset(40)
        }
        
        addSubview(loginButton)
        loginButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        addSubview(createAccountButton)
        createAccountButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(loginButton.snp.top).offset(-20)
        }
        
    }
    
}
