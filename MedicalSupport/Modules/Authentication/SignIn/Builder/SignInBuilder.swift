//
//  SignInBuilder.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 22/10/2022.
//

import UIKit

struct SignInBuilder {
    static func buildPattern(viewController: SignInViewController) {
        let router = SignInRouter()
        let interactor = SignInInteractor()
        let presenter = SignInPresenter()
        viewController.presenter = presenter
        router.viewController = viewController
        interactor.output = presenter
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = viewController
    }
}
