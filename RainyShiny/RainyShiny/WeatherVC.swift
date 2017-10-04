//
//  ViewController.swift
//  RainyShiny
//
//  Created by yatheeswara reddy pulicherla on 7/8/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var currentWeatherTypeLbl: UILabel!
    @IBOutlet weak var currentWeatherImg: UIImageView!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
  var currenWeather = CurrentWeather()
    var forecast : Forecast!
    var forecasts = [Forecast]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        currenWeather.downloadWeatherDetails {
            self.downloadForecastData(){
                 self.updateUI()
            }
        }
        
        
    }
    
    func downloadForecastData(completed: @escaping DownloadComplete){
        let forecastURL = URL(string: FORECAST_URL)
        let task = URLSession.shared.dataTask(with: forecastURL!) { data, response, error in
            guard error == nil else {
                print(error!)
                return
            }
            guard let data = data else {
                print("Data is empty")
                return
            }
            
            let json = try! JSONSerialization.jsonObject(with: data, options: [])as? Dictionary<String, AnyObject>
            //print(json)
            if let list = json?["list"] as? [Dictionary<String, AnyObject>]{
                    for obj in list {
                    let forecast = Forecast(weatherDict: obj)
                    self.forecasts.append(forecast)
                    print(obj)
                    }
                    self.forecasts.remove(at: 0)
                    self.tableView.reloadData()
                }
        }
        completed()
        task.resume()
        //        let forecastURL = URL(string: FORECAST_URL)
//        Alamofire.request(forecastURL!).responseJSON { response in
//            let result = response.result
//            if let dict = result.value as? Dictionary<String, AnyObject>{
//                if let list = dict["list"] as? [Dictionary<String, AnyObject>]{
//                    for obj in list {
//                        let forecast = Forecast(weatherDict: obj)
//                        self.forecasts.append(forecast)
//                        print(obj)
//                    }
//                    self.forecasts.remove(at: 0)
//                    self.tableView.reloadData()
//                }
//            }
//            completed()
//        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? WeatherCell{
            let forecast = forecasts[indexPath.row]
            cell.configureCell(forecast: forecast)
            return cell
        }else{
            return WeatherCell()
        }
    }
    func updateUI() {
        locationLbl.text = currenWeather.cityName
        currentTempLbl.text = "\(currenWeather.currentTemp)"
        dateLbl.text = currenWeather.date
        currentWeatherTypeLbl.text = currenWeather.weatherType
        currentWeatherImg.image = UIImage(named: currenWeather.weatherType)
        
    }

}

