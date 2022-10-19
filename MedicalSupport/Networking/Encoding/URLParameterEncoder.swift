//
//  URLParameterEncoder.swift
//  TableGit
//
//  Created by MINERVA on 12/07/2022.
//

import Foundation

public struct URLParameterEncoder: ParameterEncoder {
    
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters?, and path: String?) throws {
        do {
            guard let url = urlRequest.url, var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
                throw NetworkError.missingURL
            }
            
            urlRequest.url = urlComponents.url
            if let path = path {
                urlComponents.path = path
            }
            if let parameters = parameters {
                
                urlComponents.queryItems = try parameters.compactMap({ (key ,value) in
                    guard let v = value as? CustomStringConvertible else {
                        throw NetworkError.invalidParameter
                    }
                    return URLQueryItem(name: key, value: v.description)
                })
            }
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
            }
        } catch {
           throw NetworkError.encodingFailed
        }
    }
    
}
