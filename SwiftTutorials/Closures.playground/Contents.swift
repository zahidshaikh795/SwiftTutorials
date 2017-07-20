//: Playground - noun: a place where people can play

import UIKit
/*Closures are self contained blocks of functionality that can be passed around and used
in your code.
- Defining a closure

Closures are typically enclosed in curly braces { } and are defined by a function
type () -> (), where -> separates the arguments and the return type, followed by the in keyword which separates the closure header from its body.


{ (parameters) -> returnType  in
      statements
}.*/

let names = ["christen","daniala","jonny","diwana","lola khan"]

func backward(_ s1:String,_ s2:String)-> Bool{
return s1 > s2
}

var reversedNames = names.sorted(by: backward)
//print(reversedNames)

var reversedNames1 = names.sorted(by:{ (s1:String,s2:String) -> Bool in return s1 > s2
})
//var reversedNames1 = names.sorted(by:{ s1,s2 -> Bool in return s1 > s2})
//print(reversedNames1)
//var reversedNames2 = names.sorted(by:{$0>$1})
var reversedNames2 = names.sorted(by:>)

// here $0 & $1 refers to the closure first and second string argument
print(reversedNames2)

let digitsNames = [0:"zero",1:"one",2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",8:"eight",9:"nine"]
var numbers = [16,37,510]
let strings = numbers.map{ (number) -> String
in
var number = number
var output = ""
    repeat {
    output = digitsNames[number % 10]! + output
    number /= 10
} while number > 0
    return output
}


		
