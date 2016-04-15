//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let addInts = {
    (nums:[Int])-> Int
    in
    return nums.reduce(0, combine: {$0+$1})
}

let multInts = {
    (nums:[Int])-> Int
    in
    return nums.reduce(1, combine: {$0*$1})
}

multInts([1,2,3,4,5,6])
addInts([1,2,3,4,5,6])

let  outputMathResult = {
    (passedClose:([Int])->Int, numbers:Int...)
    in
    let x = 1
    print("Result:\(passedClose(numbers))")
}

outputMathResult(addInts, 3,5,2,1,10,2)
outputMathResult(multInts, 3,5,2,5)