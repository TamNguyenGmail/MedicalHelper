//
//  NetworkError.swift
//  TableGit
//
//  Created by MINERVA on 12/07/2022.
//

import Foundation

public enum NetworkError : String, Error {
    
    case invalidURL
    case invalidParameter = "Parameters were nil."
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
    case buildingRequestUrlFailed = "RequestURL is fail to build"
    case configuringParametersFailed = "Parameters are fail to configure"
    case invalidJSON
    
}

