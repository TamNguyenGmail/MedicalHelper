//
//  HTTPTask.swift
//  TableGit
//
//  Created by MINERVA on 12/07/2022.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    
    case request
    
    case requestParameters(bodyParameters: Parameters?,
                           bodyEncoding: ParameterEncoding,
                           urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?,
                                     bodyEncoding: ParameterEncoding,
                                     urlParameters: Parameters?,
                                     additionHeaders: HTTPHeaders?)
    
    case downloadFile
    // case download, upload...etc
}
