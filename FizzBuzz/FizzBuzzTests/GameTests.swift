//
//  GameTests.swift
//  FizzBuzz
//
//  Created by yatheeswara reddy pulicherla on 6/26/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import XCTest
@testable import FizzBuzz
class GameTests: XCTestCase {
    let game = Game()
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero(){
        XCTAssertTrue(game.score == 0)
    }
    func testOnPlayScoreIncremented(){
        _ = game.play(move: "")
        XCTAssertTrue(game.score == 1)
    }
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        _ = game.play(move: "")
        XCTAssertTrue(game.score == 2)
    }
    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
}
