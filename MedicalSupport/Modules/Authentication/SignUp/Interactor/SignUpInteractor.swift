//
//  SignUpInteractor.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 23/10/2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import RxSwift

final class SignUpInteractor: SignUpInteractorInputProtocol {

  // MARK: - Properties
  weak var output: SignUpInteractorOutputProtocol?

  // MARK: - Functions
  func viewDidLoad() {
  }

  deinit {
    print("\(String(describing: (type(of: self)))) deinit")
  }

  func inputData(params: [String: Any]) {
  }
}
