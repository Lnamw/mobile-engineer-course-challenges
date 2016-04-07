//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let myArray = ["Hi", "There"]
// myArray[1] = "you" -- Impossible -- Arrays are immutable in size and in content!!

// Swift pass by value instead of passing by reference as in Objectve C (pointer)

//let newArray:[string] = ["yo", 1]  - Not possible
let newArray:[Any] = ["yo", 1]

print(myArray[1])

let newArray2:[String] = ["Ln","Ben"]

let anotherArray = myArray + newArray2
//let anotherArray1 = myArray + newArray  -- Not possible must be same type of array


let arr2D = [myArray, newArray2]
print(arr2D[1])
print(arr2D[1][1])

myArray.count

arr2D.count
arr2D[0].count

let intArray = [Int](count: 3, repeatedValue: 2)
let stringArray = [String](count: 4, repeatedValue: "a")

let emptyArr = [String]()
emptyArr.isEmpty

let numList = [1,2,3,4,5,6]
numList.dropFirst()
numList.dropLast()
numList.dropFirst(3)
numList.dropLast(2)
numList.first
numList.last
emptyArr.first
emptyArr.last



