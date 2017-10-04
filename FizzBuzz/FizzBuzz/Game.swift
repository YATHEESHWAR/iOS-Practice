//
//  Game.swift
//  FizzBuzz
//
//  Created by yatheeswara reddy pulicherla on 6/26/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import Foundation
class Game{
    var score : Int
    init() {
        score = 0
    }
    func play(move : String) -> Bool{
        score += 1
        return true
    }
}
