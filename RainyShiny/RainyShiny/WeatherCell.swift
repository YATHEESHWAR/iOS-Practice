//
//  WeatherCell.swift
//  RainyShiny
//
//  Created by yatheeswara reddy pulicherla on 7/10/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var lowTemp: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    
    func configureCell(forecast: Forecast){
        dateLbl.text = forecast.date
        highTemp.text = forecast.highTemp
        lowTemp.text = forecast.lowTemp
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }
}
