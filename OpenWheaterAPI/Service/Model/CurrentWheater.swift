//
//  CurrentWheater.swift
//  OpenWheaterAPI
//
//  Created by Fulltrack Mobile on 07/10/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

import Foundation

struct CurrentWeather: Codable {
    var main: Main
    var name: String
}

struct Main: Codable {
    var temp: Float
    var pressure: Float
    var humidity: Float
    var tempMin: Float
    var tempMax: Float
}

extension Main {
    enum CodingKeys: String, CodingKey {
        case temp
        case pressure
        case humidity
        case tempMin = "temp_min"
        case tempMax = "temp_max"
    }
}
