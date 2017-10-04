//
//  Brain.swift
//  FizzBuzz
//
//  Created by yatheeswara reddy pulicherla on 6/26/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

import Foundation
class Brain{
    func isDivisibleByThree(number: Int) -> Bool {
        return (number % 3 == 0)
    }
    func isNotDivisibleByThree(number: Int) -> Bool {
        return (number % 3 == 0)
    }
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    func isNotDivisibleByFive(number: Int) -> Bool {
        return (number % 5 == 0)
    }
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    func isNotDivisibleByFifteen(number:Int) -> Bool {
        return (number % 15 == 0)
    }
    func isDivisibleBy(divisor : Int , number : Int) -> Bool {
        return (number % divisor == 0)
    }
//    func checkFizz(number: Int) -> String {
//        if isDivisibleByThree(number: number){
//            return "Fizz"
//        }
//        return ""
//    }
//    func checkBuzz(number: Int) -> String {
//        if isDivisibleByFive(number: number){
//            return "Buzz"
//        }
//        return ""
//    }
//    func checkFizzBuzz(number: Int) -> String {
//        if isDivisibleByFifteen(number: number){
//            return "FizzBuzz"
//        }
//        return ""
//    }
    
    func check(number: Int) -> String {
        if isDivisibleByFifteen(number: number) {
            return "FizzBuzz"
        } else if isDivisibleByThree(number: number) {
            return "Fizz"
        } else if isDivisibleByFive(number: number){
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
}
