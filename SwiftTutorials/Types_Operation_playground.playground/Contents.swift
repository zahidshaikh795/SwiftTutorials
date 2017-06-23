//: Playground - noun: a place where people can play

import UIKit

var integer: Int = 100
var decimal: Double = 12.5
//integer = decimal //Error Cannot assign value of type 'Double' to type 'Int'
integer = Int(decimal)


let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

let typeInferredDouble = 3.14159
//Sometimes it’s useful to check the inferred type of a variable or constant. You can do this in a playground by holding down the Option key and clicking on the variable or constant’s name.
//ways of representing any variable or constant
let actuallyDouble = Double(3)
let actuallyDouble1: Double = 3
var actuallyDouble2 = 3 as Double
let age1 = 42 as Double
let age2 = 21 as Double
let avrage = (age1+age2)/2
// Characters and Strings

let characterA: Character = "a"
let characterDog: Character = "🐶"
let stringDog = "Dog" // Inferred to be of type String
var message = "Hello" + " my name is "
let name = "ZAHID"
message += name
let exclamationMark: Character = "!"
message += String(exclamationMark)

//Interpolation

message = "Hello my name is \(name)!"

let oneThird = 1.0 / 3.0
let oneThirdLongString = "One third is \(oneThird) as a decimal."
let firstName = "zahid"
let lastName = "shaikh"
let fullName = firstName+lastName
var myDetail = "Hello, my name is \(fullName) Galloway."

//TUPLES

let coordinates = (2.34, 3.75)
let x = coordinates.0
let y = coordinates.1

let coordinates3D = (x1: 2, y1: 3, z1: 1)
let (x1, y1, z1) = coordinates3D
let coordinates3D1 = (x: 2.12, y: 3.13, z: 4.14)
let x2 = coordinates3D1.x
let y2 = coordinates3D1.y
let z2 = coordinates3D1.z
let (x3, y3, _) = coordinates3D
// This line of code only declares x and y. The _ is special and simply means you’re ignoring this part for now.
coordinates3D.x1

//Exercise

var contituentComponents = (date: 24,month: 06,year: 2017,avgTemp: 35.7)
let (date, month, _, _) = contituentComponents
contituentComponents = (24,06,2017,32.4)
let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day
let month1 = tuple.month
let tuple1 = (100, 1.5, 10)
let value = tuple1.1
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"
let a = 4
let b: Int32 = 100
let c: UInt8 = 12
let sum = a + Int(b) - Int(c)





		