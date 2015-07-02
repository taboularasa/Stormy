//
//  ViewController.swift
//  Stormy
//
//  Created by David on 6/24/15.
//  Copyright (c) 2015 Philosophie LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var currentTemperatureLabel: UILabel?
  @IBOutlet weak var currentHumidityLebel: UILabel?
  @IBOutlet weak var currentPrecipitationLabel: UILabel?
  
  private let forcastAPIKey = "73431915607db22e82da5f001f89d716"
  let coordinate:(lat: Double, long: Double) = (37.0, -122.0)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let forcastService = ForecastService(APIKey: forcastAPIKey)
    forcastService.getForecast(coordinate.lat, long: coordinate.long) {
      (let currently) in
      if let currentWeather = currently {
        dispatch_async(dispatch_get_main_queue()) {
          if let temperature = currentWeather.temperature {
            self.currentTemperatureLabel?.text = "\(temperature)º"
          }
        }
      }
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}


