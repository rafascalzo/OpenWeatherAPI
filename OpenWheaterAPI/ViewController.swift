//
//  ViewController.swift
//  OpenWheaterAPI
//
//  Created by Fulltrack Mobile on 07/10/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        print("vish")
        WeatherClient.getCurrentWeather(cityId: 3451190, unit: "metric") { (result, error) in
            if error != nil {
                print("error while processing data")
                return
            } else {
                print(result?.name)
                print(result?.main.temp)
            }
            
            
        }
    }
}

