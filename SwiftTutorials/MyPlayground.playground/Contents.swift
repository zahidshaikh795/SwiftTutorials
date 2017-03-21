//: Playground - noun: a place where people can play

import UIKit

//Constants and Variables

let iu:Float = 90
let str = "hello \(iu) world ."



print(iu)
print(str )


let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

var shoppingList = ["catfish", "water", "tulips", "blue paint"]


var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"]="public relation"
let emptyArray = [String]()







print(implicitInteger)
print(appleSummary)
print(fruitSummary)
print(explicitFloat)
print(widthLabel)
print(shoppingList[1])
print(occupations["Jayne"] as Any)
print(occupations["Kaylee"]!)
print(emptyArray)

let individualScores = [5, 43, 103, 87, 102,09]
var teamScore = 0
for marks in individualScores {
    if marks > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"

}
else{
    greeting = "zahid shaikh"
}
print(greeting)
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasPrefix("red"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13,76],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var larKind:String?
larKind = nil
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            larKind=kind
        }
    }
}
print(largest)
print(larKind!)

var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

var total = 0
for i in 0...10 {
    total += i
}
print(total)

func greet(person: String, dish: String) -> String {
    return "Hello \(person), today's special is \(dish)."
}
greet(person: "Bob", dish: "Bade ki khichdi")

func greet(_ person: String,_ day: String) -> String {
    return "Hello \(person), today is \(day)."
}

let msg = greet("John", "Wednesday")
print(msg)

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics)

func averageOf(numbers: Int...) -> Int {
    var sum = 0
    var average = 0
    for number in numbers {
        sum += number
        let size = numbers.count
        average = sum/size

       
    }
    return average
}
let sum = averageOf(numbers: 10, 20, 30)
print(sum)
