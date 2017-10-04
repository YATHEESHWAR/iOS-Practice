//
//  Constants.swift
//  RainyShiny
//
//  Created by yatheeswara reddy pulicherla on 7/9/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATTITUDE = "lat="
let LONGOTUDE = "&lon="
let APPID = "&appid="
let API_KEY = "764f1a084cfe11628e8731c6d593414c"
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATTITUDE)-36\(LONGOTUDE)123\(APPID)\(API_KEY)"

typealias DownloadComplete = () -> ()


let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=-36&lon=123&cnt=16&appid=764f1a084cfe11628e8731c6d593414c"
