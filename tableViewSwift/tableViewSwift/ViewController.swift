//
//  ViewController.swift
//  tableViewSwift
//
//  Created by yatheeswara reddy pulicherla on 6/15/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var arrMatches = ["INDIA vs PAKISTHAN" , "ENGLAND vs PAKISTHAN" , "SRILANKA vs PAKISTHAN" , "INDIA vs BANGLADESH" , "INDIA vs SA" , "AUSTRALIA vs ENGLAND" , "AUSTRALIA vs SRILANKA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return arrMatches.count
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell()
        cell.textLabel?.text = arrMatches[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          performSegue(withIdentifier: "pickIdentifier", sender: arrMatches[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! PicksViewController
        dest.matchStr = sender as! String
    }
    
}

