//
//  SignInPresenter.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 22/10/2022.
//

import Foundation

class SignInPresenter: SignInPresenterProtocol {
        
    // MARK: - Properties
    weak var view: SignInViewProtocol?
    var interactor: SignInInteractorInputprotocol?
    var router: SignInRouterProtocol?
    
    // MARK: - Functions
    func viewDidLoad() {
    }
    
    func inputText(text: String) {
        print(text)
    }
    
    func handleTapSignUpButton() {
        guard let router = self.router else { return }
        router.openSignUpModule()
    }
    
}

// MARK: - SignInInteractorOutputprotocol
extension SignInPresenter: SignInInteractorOutputprotocol {
    
}
