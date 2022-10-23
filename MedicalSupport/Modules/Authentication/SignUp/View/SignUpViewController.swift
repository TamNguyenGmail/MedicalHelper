//
//  SignUpViewController.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 17/10/2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    // MARK: - Outlets
    
    // MARK: - Properties
    var presenter: SignUpPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - SignUpViewProtocol
extension SignUpViewController: SignUpViewProtocol {
  func reloadData() {
  }
}

