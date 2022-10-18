//
//  ParameterEncoding.swift
//  TableGit
//
//  Created by MINERVA on 12/07/2022.
//

import Foundation

public typealias Parameters = [String:Any]

public protocol ParameterEncoder {
    
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters?, and path: String?) throws
    
}

extension ParameterEncoder {
    
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters?, path: String?, media: [Media]?) throws {}
    
}

public enum ParameterEncoding {
    
    case urlEncoding
    case jsonEncoding
    case urlAndJsonEncoding
    
    public func encode(urlRequest: inout URLRequest,
                       bodyParameters: Parameters? = nil,
                       urlParameters: Parameters? = nil,
                       path: String? = nil) throws {
        do {
            switch self {
            case .urlEncoding:
                try URLParameterEncoder.encode(urlRequest: &urlRequest, with: urlParameters, and: path)
                
            case .jsonEncoding:
                try JSONParameterEncoder.encode(urlRequest: &urlRequest, with: bodyParameters, and: path)
                
            case .urlAndJsonEncoding:
                try URLParameterEncoder.encode(urlRequest: &urlRequest, with: urlParameters, and: path)
                try JSONParameterEncoder.encode(urlRequest: &urlRequest, with: bodyParameters, and: path)
                
            }
            
        } catch(let error) {
            
            print(error.localizedDescription)
            throw NetworkError.encodingFailed
            
        }
        
    }
}
