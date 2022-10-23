//
//  SignUpPresenter.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 23/10/2022.
//  Copyright © 2021 Motorist. All rights reserved.
//
//

import Foundation

final class SignUpPresenter: SignUpPresenterProtocol {

  // MARK: - Properties
  weak var view: SignUpViewProtocol?
  var interactor: SignUpInteractorInputProtocol?
  var router: SignUpRouterProtocol?

  // MARK: - Lifecycle
  func viewDidLoad() {
    guard let interactor = self.interactor else { return }
    interactor.viewDidLoad()
  }

  deinit {
    print("\(String(describing: (type(of: self)))) deinit")
  }

  func inputData(params: [String: Any]) {
    guard let interactor = self.interactor else { return }
    interactor.inputData(params: params)
  }

  // MARK: - Functions

}

// MARK: - SignUpInteractorOutputProtocol
extension SignUpPresenter: SignUpInteractorOutputProtocol {
  func reloadData() {
  }
}
