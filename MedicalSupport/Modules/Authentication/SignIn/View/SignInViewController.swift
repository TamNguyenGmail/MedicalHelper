//
//  ViewController.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 17/10/2022.
//

import UIKit
import RxCocoa
import RxSwift

class SignInViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    // MARK: - Properties
    var presenter: SignInPresenterProtocol?
    
    // MARK: - Properties
    private let disposeBag = DisposeBag()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.implementRx()
    }

    // MARK: - Functions
    private func implementRx() {
        self.userNameTextField.rx.text.orEmpty.subscribe { [weak self] (text) in
            guard let this = self, let presenter = this.presenter, let textElement = text.element else { return }
            presenter.inputText(text: textElement.description)
        }.disposed(by: self.disposeBag)
        
        self.passwordTextField.rx.text.orEmpty.subscribe { (text) in
            print(text)
        }.disposed(by: self.disposeBag)
        
        self.userNameTextField.rx.observe(String.self, "text").subscribe { (text) in
            print(text)
        }.disposed(by: self.disposeBag)
        
        self.signInButton.rx.tap.subscribe { [weak self] _ in
            guard let this = self else { return }
            this.userNameTextField.text = nil
        }.disposed(by: self.disposeBag)
        
        self.signUpButton.rx.tap.subscribe { [weak self] _ in
            guard let this = self, let presenter = this.presenter else { return }
            presenter.handleTapSignUpButton()
        }.disposed(by: self.disposeBag)

    }

}

// MARK: - SignInViewProtocol
extension SignInViewController: SignInViewProtocol {
    
}
