//
//  SignUpPresenterProtocol.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 23/10/2022.
//  Copyright © 2021 Motorist. All rights reserved.
//
//

import UIKit

protocol SignUpPresenterProtocol: AnyObject {

  // MARK: - Functions
  func viewDidLoad()
  func inputData(params: [String: Any])
}
