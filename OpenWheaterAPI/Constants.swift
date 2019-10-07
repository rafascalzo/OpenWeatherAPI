//
//  Constants.swift
//  OpenWheaterAPI
//
//  Created by Fulltrack Mobile on 07/10/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

import Foundation

struct Constants {
    
    struct ProductionServer {
        static let baseURL = "http://api.openweathermap.org/data/2.5"
    }
    struct APIParameterKey {
        static let apiKey = "e3210de01d0fa7e1c2ea51685f120d9f"
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
