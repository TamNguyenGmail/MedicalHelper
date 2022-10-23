//
//  SignUpBuilder.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 23/10/2022.
//  Copyright © 2021 Motorist. All rights reserved.
//
//

import UIKit

struct SignUpBuilder {
    static func createModule() -> SignUpViewController? {
        let viewController = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        let presenter = SignUpPresenter()
        let router = SignUpRouter()
        let interactor = SignUpInteractor()
        viewController.presenter = presenter
        router.viewController = viewController
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.output = presenter
        return viewController
    }
}
