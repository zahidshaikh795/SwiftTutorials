//: Playground - noun: a place where people can play

import UIKit

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
var reference: Person?
var reference1: Person?

reference = Person(name: "Ariz")
 reference1   = reference
reference = nil
reference1 = nil


class Person1 {
    let name: String
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit {
        print("\(name) is being deinitialized")
    }
}
class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
 weak   var tenant: Person1? // weak reference
    // var tenant: Person1? . It is a strong reference
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

var john: Person1?
var unit4a: Apartment?
john =  Person1(name: "Jonny")
unit4a = Apartment(unit: "4A")
john!.apartment = unit4a
unit4a!.tenant = john
john = nil
unit4a = nil



class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}
class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "India", capitalName: "New Delhi")
print("\(country.capitalCity.name) is the capital of \(country.name)")




class HTMLElement {
    
    let name: String
    let text: String?
    lazy var asHTML: () -> String = {
      [unowned self] in
        if let text = self.text{
        
        return "<\(self.name)>\(text)</\(self.name)>"
        }
        else {
            return "<\(self.name) />"
   }
}
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

let heading = HTMLElement(name: "h1")
let defaultText = "some default text"
heading.asHTML = {
    return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"}
print(heading.asHTML())

var paragraph: HTMLElement? = HTMLElement(name: "P", text: "hello world")
print(paragraph!.asHTML())
paragraph = nil

