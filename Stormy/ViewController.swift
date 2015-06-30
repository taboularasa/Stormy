//
//  ViewController.swift
//  Stormy
//
//  Created by David on 6/24/15.
//  Copyright (c) 2015 Philosophie LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var currentTempratureLabel: UILabel?
  @IBOutlet weak var currentHumidityLebel: UILabel?
  @IBOutlet weak var currentPrecipitationLabel: UILabel?
  
  private let forcastAPIKey = "73431915607db22e82da5f001f89d716"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(forcastAPIKey)/")
    let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)
    let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
    let session = NSURLSession(configuration: configuration)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}


