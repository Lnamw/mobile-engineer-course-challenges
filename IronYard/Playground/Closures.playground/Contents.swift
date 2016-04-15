//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let aClosure = {
    () -> ()
    in
    let x = 1
    print("Hi there")
}
aClosure()


let aClosure2 = {
    let y = 2
    print("Hi there")
}
aClosure2()

let aClosure3 = {
    (stringParam:String) -> ()
    in
    let d = 3
    print("Hi there \(stringParam)")
}
aClosure3("Elena")

let number1 = 5, number2 = 10
let result = number1 > number2 ? number1 : number2


let max = {
    (number1:Int, number2:Int) -> Int
    in
    return number1 > number2 ? number1 : number2
}
print("Max of 12, 4 is \(max(12,4))")


let compareNumber = {
    (number1:Int, number2:Int) -> Int
    in
    return number1 > number2 ? number1 : number2
}
print("Between 2 et 100 the biggest number is \(compareNumber(2,100))")


let averageOfNums = {
    (numbers:Double...) -> Double
    in
    return numbers.reduce(0, combine: {$0+$1})/Double (numbers.count)
}
averageOfNums(1,2,3)

let sayHelloToBen = {
    () -> String
    in
    return "Hello Ben"
}

let sayHelloToLn = {
    () -> String
    in
    return "Hello Ln"
}

let sayHelloToSomeone = {
    (passedFunction:() -> String) -> (String)
    in
    return "Say: \(passedFunction())"
}

print(sayHelloToSomeone(sayHelloToBen))
sayHelloToSomeone(sayHelloToLn)

let addInts = {
    (numbers:Int...) -> Int
    in
    return numbers.reduce(0, combine: {$0 + $1})
}
addInts(1, 2, 3, 4)

let multInts = {
    (numbers:Int...) -> Int
    in
    return numbers.reduce(1, combine: {$0 * $1})
}
multInts(1,2,3,4)

let outputMathResult = {
    (passedFunction: (Int...) -> Int, a:Int, b:Int)
    in
    return passedFunction
}

print("Result: \(outputMathResult(addInts, 3, 5))")
print("Result: \(outputMathResult(addInts, 3, 5))")


let upElseDown = {
    (addElseSub: Bool) -> () -> String
    in
    let increase = {() -> String in return "Up vote"}
    let decrease = {() -> String in return "Down vote"}
    return addElseSub ? increase : decrease
}

let upOrDownVote = false
let vote = upElseDown (upOrDownVote)
print("You got an \(vote())")

let bothRoots = {
    (square:Double) -> (Double, Double)
    in
    let sr = sqrt(square)
    return (sr, -sr)
}
print("the roots of nine are \(bothRoots(9))")

























