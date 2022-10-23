//
//  SignUpInteractorProtocol.swift
//  MedicalSupport
//
//  Created by Nguyen Minh Tam on 23/10/2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol SignUpInteractorInputProtocol: AnyObject {

  // MARK: - Functions
  func viewDidLoad()
  func inputData(params: [String: Any])
}

protocol SignUpInteractorOutputProtocol: AnyObject {

  // MARK: - Functions
  func reloadData()
}
