//
//  WheaterClient.swift
//  OpenWheaterAPI
//
//  Created by Fulltrack Mobile on 07/10/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

import Alamofire

class WeatherClient{
    @discardableResult
    private static func performRequest(route: WeatherEndpoint, completion: @escaping (DataResponse<Any>?)-> Void) -> DataRequest{
        return Alamofire.request(route).validate().responseJSON { (response: DataResponse<Any>?) in
            completion(response)
        }
    }

    static func getCurrentWeather(cityId: Int, unit: String, completion: @escaping (CurrentWeather?, Error?) -> Void){
        performRequest(route: .current(cityId: cityId, unit: unit)){response in
            if response?.error == nil{
                if let data = response?.data, let utf8Text = String(data: data, encoding: .utf8){
                    let json = utf8Text.data(using: .utf8)
                    
                    do{
                        let decoder = JSONDecoder()
                        let decodedJson = try decoder.decode(CurrentWeather.self, from: json!)
                        completion(decodedJson, nil)
                        //print(decodedJson)
                    }catch{
                        completion(nil, error)
                        print(error)
                    }
                }
            } else{
                print(response?.error as Any)
            }
        }
    }
    
}
