//
//  APIConfiguration.swift
//  OpenWheaterAPI
//
//  Created by Fulltrack Mobile on 07/10/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

// PARA PADRONIZAR OS ENDPOINTS
import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
