//
//  SignInRouter.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 22/10/2022.
//

import Foundation
import UIKit

class SignInRouter: SignInRouterProtocol {

    // MARK: - Properties
    var viewController: SignInViewController?
    
    // MARK: - Functions
    func openSignUpModule() {
        guard let viewController = self.viewController, let navigationController = viewController.navigationController, let targetVC = SignUpBuilder.createModule() else { return }
        navigationController.pushViewController(targetVC, animated: true)
    }
    
}
