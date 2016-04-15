//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// CLOSURE      closures are anonymous function
// Like a block  with in
// { (arg) -> retType
//        in
// ...... }

let aClosure =
{
        //    () -> Void
        //    in
        let x = 1
        print("hi there")
}

aClosure()

let bClosure = {
        (stringParam:String) //-> Void   optionnel
        in
        let x = 1
        print("Our input was \(stringParam)")
}

bClosure("Hi there")


let num1 = 1, num2 = 2
let result = num1 > num2 ? num1 : num2
// Before ? is condition, If true return num1 if faulse return num 2

//To do the same with a closure
let max = {
    (number1:Int, number2:Int)-> Int
    in
    return number1 > number2 ? number1 : number2
}
max(7,5)


//let averageOfNums = {
//    (numbers:[Double])
//} you can do this in one line : 

let averageOfNums = {
    (numbers:Double...)-> Double
    in
    return numbers.reduce(0, combine: {$0+$1})/Double (numbers.count)
}
// Variadic ...  passed as many parameters as we like

averageOfNums(1,2,3,4,5,6,7,8,9,10)
averageOfNums(1,2,3,4)
averageOfNums(1.1,2.2,3.3,4.4)

let otherAverage = {
    (name:String, numbers:Double...)-> Double
    in
    return numbers.reduce(0, combine: {$0+$1})/Double (numbers.count)
}

otherAverage("Hi",1,2,3)

let helloBen = {
    ()-> String
    in
    return "Hello Ben"
}

let helloLn = {
    ()-> String
    in
    return "Hello Ln"
}

let saySomething = {
    (passedClosure:()-> String) //->Void    passedFunction will have this kind of closure
    in
    let x = 1
    print("Result:\(passedClosure())")
}

saySomething(helloBen)
saySomething(helloLn)

let addInts = {
    (nums:Int...)-> Int
    in
    return nums.reduce(0, combine: {$0+$1})
}

let multInts = {
    (nums:Int...)-> Int
    in
    return nums.reduce(1, combine: {$0*$1})
}

multInts(1,2,3,4,5)
addInts(1,2,3,4,5)

let  outputMathResult = {
    (passedClose:(Int...)->Int, a:Int, b:Int)
    in
    let x = 1
    print("Result:\(passedClose(a,b))")
}

outputMathResult(addInts, 3,5)
outputMathResult(multInts, 3,5)

let upElseDown = {
    (addElseSub:Bool)->()->String
    in
    let increase = {()->String in return "Up Vote"}
    let decrease = {()->String in return "Down Vote"}
    return addElseSub ? increase : decrease
}

let upVoteOrDownVote = false
let vote = upElseDown(upVoteOrDownVote)
print("you got an \(vote())")

print("You got an \(upElseDown(false)())")

let bothRoots = {
    (square:Double)-> (Double,Double)
    in
    let sr = sqrt(square)
    return (sr,-sr)
}

bothRoots(9)
bothRoots(2)









