//
//  PicksViewController.swift
//  tableViewSwift
//
//  Created by yatheeswara reddy pulicherla on 6/15/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import UIKit

class PicksViewController: UIViewController {

    @IBOutlet weak var matchLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var matchStr = "TODO"
    override func viewDidLoad() {
        matchLabel.text = matchStr
        super.viewDidLoad()

        imageView.animationImages = [
            UIImage(named: "1.png")!,
            UIImage(named: "2.png")!,
            UIImage(named: "3.png")!,
            UIImage(named: "4.png")!]
        imageView.animationDuration = 3
        imageView.startAnimating()
        
        

        
        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
