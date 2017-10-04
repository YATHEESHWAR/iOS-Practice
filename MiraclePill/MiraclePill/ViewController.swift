//
//  ViewController.swift
//  MiraclePill
//
//  Created by yatheeswara reddy pulicherla on 7/1/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var successImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buyNowBtnClicked(_ sender: Any) {
        successImg.isHidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

