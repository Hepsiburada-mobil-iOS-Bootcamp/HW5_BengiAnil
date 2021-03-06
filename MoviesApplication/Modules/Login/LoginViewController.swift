//
//  LoginViewController.swift
//  MasterApplication
//
//  Created by Bengi on 19.10.2021.
//

import UIKit

class LoginViewController: BaseViewController<LoginViewModel> {
    
    private var authenticationView: LoginAuthenticationView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        view.backgroundColor = .clear
        addAuthenticationView()
    }
    
    private func addAuthenticationView() {
        authenticationView = LoginAuthenticationView(data: viewModel.getLoginViewData())
        authenticationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(authenticationView)
        
        NSLayoutConstraint.activate([
            authenticationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            authenticationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            authenticationView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
         ])
    }
}
