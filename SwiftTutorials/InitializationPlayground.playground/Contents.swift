//: Playground - noun: a place where people can play

import UIKit
//1 example
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
    
}
var f = Fahrenheit()
print("the default temperature is \(f.temperature) fahrenheit")


struct Celsius {
    var tempInCelcius:Double
    init(fromFahrenheit fahrenheit:Double) {
        tempInCelcius = (fahrenheit - 32.0)/18
        
    }
    init(fromKelvin kelvin:Double) {
        tempInCelcius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
print(boilingPointOfWater.tempInCelcius)
let freezingPointofWater = Celsius(fromKelvin: 273.15)
print(freezingPointofWater.tempInCelcius)

//2nd example

struct Color {
    let red,green,blue: Double
    init(red:Double,green:Double,blue:Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white:Double) {
        red = white
        green = white
        blue = white
    }
}

let megenta = Color(red: 1.0,green: 0.0,blue: 1.0)
let halfGrey = Color(white:0.5)
class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
//3rd example
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
// Prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"
//print(beetsQuestion.response)

		
//dafault initializer  4th example

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()  // default initializer


// 5th example

struct Size{
    var width=0.0,height=0.0
}

struct Point {
    var x=0.0,y=0.0
}

struct Rectangle{
    var origin = Point()
    var size = Size()
    init() {}
    init(origin:Point,size:Size) {
        self.origin=origin
        self.size=size
    }
    
    init(center:Point,size:Size) {
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point(x:originX,y:originY), size: size)
    }
}
let originRect = Rectangle(origin: Point(x:2.0,y:2.0), size: Size(width: 5.0, height: 5.0))

//6th example

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

let namedMeal = Food(name: "Bacon")
//let namedMeal = Food()

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
        
    }
    
}
let fuckallMeal = RecipeIngredient(name:"Alcapachino", quantity:4)

// 7th example

let wholeNumber: Double = 12345.0
let pi = 3.14159
if let valueMaintained = Int(exactly: wholeNumber)
{
    print("\(wholeNumber) conversion to Int maintains value")
}
// Prints "12345.0 conversion to Int maintains value" 
let valueChanged = Int(exactly: pi)
// valueChanged is of type Int?, not Int
if valueChanged == nil
{
    print("\(pi) conversion to Int does not maintain value")
}

// 8th example initializer with enumreation

enum TemperatureUnit{
    case kelvin,celcius,fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "k":
            self = .kelvin
            case "c":
            self = .celcius
        case"f":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    print("This is a defind temperature unit,so initialization succeeded")
}

let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
    print("This is not defind temperature unit, so initialization failed")
}

// 9th example chess board design

struct Chessboard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...8 {
            for j in 1...8 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard    }()
    func squareIsBlackAt(row: Int, column: Int) -> Bool {
        return boardColors[(row * 8) + column]
    }
}

let board = Chessboard()

print(board.squareIsBlackAt(row: 0, column: 1))
print(board.squareIsBlackAt(row: 7, column: 7))
		