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
    "Prime": [2, 3, 5, 7, 11, -13,76],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var smallest = 0
var larKind:String?
larKind = nil
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number < smallest {
            smallest = number
            larKind=kind
        }
    }
}
print(smallest)
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
let average = averageOf(numbers: 10, 200, 30)
print(average)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 17, 12,2]
hasAnyMatches(list: numbers, condition: lessThanTen)
//Object and Class

/*class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
        }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle:NamedShape{
    var sideLength:Double
    init(sideLength:Double,name: String) {
    self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 0
    }
    func area() -> Double {
        return 3.14*sideLength*sideLength
    }
    override func simpleDescription() -> String {
        return "A cicrcle with radius of length \(sideLength)."
    }
}
let test1 = Circle(sideLength:7,name:"my test circle")
print(test1.area())
print(test1.simpleDescription())*/
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
print(friendlyWelcome)
let blackHeart = "\u{1F496}";print(blackHeart)




//“Tuples group multiple values into a single compound value. ”

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")”

print(http404Error)
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found”

let http200Status = (statusCode: 200, description: "OK")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber ?? "hello")
// !-->Exclamation mark

var str1 = String()+"not empy"
if str1.isEmpty {
    print("string is empty")
}else{
    print(str1)
}
for character in "hello how r u !".characters{
print(character)
}
var fiveInts=Array(repeating:3,count:15)
print(fiveInts)
 fiveInts[2...10] = [4,4,4,4,4,4,4,4,4]    //subscript
fiveInts.insert(34, at: 3)
fiveInts.insert(34, at: 16)
fiveInts.remove(at: 16)
print(fiveInts)
for item in fiveInts
{
print(item)
}
let base = 5
let power = 3
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

