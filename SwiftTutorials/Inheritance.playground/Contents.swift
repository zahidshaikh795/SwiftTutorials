//: Playground - noun: a place where people can play

import UIKit


class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed:Double = 0
    init() {
        print("I am the parent")
    }
    
    func drive(speedInclrease: Double)  {
        currentSpeed += speedInclrease * 2
    }
    
    func brake()   {
        
    }
}

class SportsCar: Vehicle {
   override init() {
         super.init()
    print("I am the child")
    make = "BMW"
    model = "3 Series"
    }
    override func drive(speedInclrease: Double) {
        currentSpeed += speedInclrease * 3
    }
}

let car = SportsCar()
		