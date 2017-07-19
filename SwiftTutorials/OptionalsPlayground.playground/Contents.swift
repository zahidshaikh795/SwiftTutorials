//: Playground - noun: a place where people can play

import UIKit

class Car {
    var model: String?
}

var vehicle: Car?
print(vehicle?.model ?? "i10")

vehicle = Car()
vehicle?.model = "Range Rover"
// we use question mark above coz we dont know it has value or not

if let v = vehicle, let m = v.model {
        print(m)
}

var cars:[Car]?
cars = [Car] ()

if let carArr = cars, carArr.count > 0 {
} else{
cars?.append(Car())
    print(cars?.count ?? "Fucking Value")
}

class Person {
    var _age:Int!
   
    var age: Int {
        if _age == nil {
        _age = 15
        }
        return _age
    }
    
    
    
    func setAge(newAge:Int)  {
        self._age = newAge
    }
    
}
var jack = Person()
print(jack._age)
print(jack.age)

class Dog {
    var species: String
    // constructor
    init(someSpecies: String) {
        self.species = someSpecies
    }
    
}
var lab = Dog(someSpecies: "Black Lap")
print(lab.species)


// if u dont know that there is going to value in the variable the use QUESTION MARK optionals
// if u know certainly that there is gonna be value in variable then use EXCLAMATION MARK AS OPTIONALS
//while using exclamation mark optionals you better use some safety code to initialize it
// use IF LET while use question mark optionals
