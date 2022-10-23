//
//  SignUpRouter.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 23/10/2022.
//  Copyright © 2021 Motorist. All rights reserved.
//

import UIKit

final class SignUpRouter: SignUpRouterProtocol {

  // MARK: - Properties
  weak var viewController: SignUpViewController?

  // MARK: - Functions
  deinit {
    print("\(String(describing: (type(of: self)))) deinit")
  }

}
