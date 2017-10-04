//
//  ViewController.swift
//  Sample
//
//  Created by yatheeswara reddy pulicherla on 6/2/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var MenuLbl: UILabel!
    @IBAction func ChangeMenu(sender: UIButton) {
        if(MenuLbl.text == "Hello"){
            var name = "yatheesh";
            var titl = "Mr."
            var returnValue = "Hello \(titl) \(name)"
            MenuLbl.text = returnValue;

        }else{
            MenuLbl.text = "Hello";
        }
    }
    
    
   
}

