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


let things:[Any] = ["Dalek", 3, true]

//TUPLES

let thingsTuple = ("Dalek", 3, true)

let invader = ("Dalek", 3, true)
let (alien, howMany, dangerous) = invader

print(howMany)
print(alien)

let invaders = (alien:"Dalek", howMany:3, dangerous:true)

print("the \(invaders.alien) have invaded, there are \(invaders.howMany). They are dangerous \(invaders.dangerous)")
print("the \(invaders.0) have invaded, there are \(invaders.1). They are dangerous \(invaders.2)")


let (_, howMAny, _) = invader
print(howMAny)



