//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print("Hello World")

let value = 1
print(value)

let insertConstant = 30
print("The insert value is \(insertConstant)")

let anotherConstant = "Ben"
print("My name is \(anotherConstant) and I am \(insertConstant) years old")

let a = 1, b = 2, c = 3
print("A is \(a), B is \(b), C is \(c)")

let likeChocolate = true

print("Do you like chocolate? \(likeChocolate)")


let value1 = 1.2
let value2:Int = Int(value1)

let billionUS = 1_000_000_000
print(billionUS)

let paddedDouble = 000123.456
print(paddedDouble)

let stringA = "Hi"
let stringB = " there"
let newString = stringA + stringB

let aString = "Hi There"
let upper = aString.uppercaseString
let lower = aString.lowercaseString

let theCount = aString.characters.count

let aString1 = "abcdefghijk1234567890"
let index = aString1.startIndex.advancedBy(9)
let newString1 = aString1.substringFromIndex(index)

let index1 = aString1.endIndex.advancedBy(-8)
let newString2 = aString1.substringFromIndex(index1)

let start = aString1.startIndex.advancedBy(9)
let end = aString1.startIndex.advancedBy(13)
let newString3 = aString1.substringWithRange(start..<end)

let fib = [1, 1, 2, 3, 5, 8]
let size = fib.count
print("The values for the fib array are \(fib)")
fib.count


let fib1:[Double] = [1, 1, 2, 3, 5, 8]
print(fib1)
print("Element 0 has a value of \(fib1[0])")
print("Element 1 has a value of \(fib1[1])")
print("Element 2 has a value of \(fib1[2])")
print("Element 3 has a value of \(fib1[3])")
print("Element 4 has a value of \(fib1[4])")


let array1 = ["A", "B", "C", "D"]
let array2 = ["a", "b", "c", "d"]
let newArray = array1 + array2
print("New array has the following values \(newArray)")

let array3 = [array1, array2]

let numList = [1,2,3,4,5,6]
numList.first
numList.last

numList.dropFirst()
numList.dropLast()


let emptyArray = [Int]()
emptyArray.first
emptyArray.last

let empty = [String]()

empty.dropFirst()
empty.dropLast()


let willenFamily = ("Ln", "Ben", 2, true)
let (female, male, howMany, nice) = willenFamily
print(male)
print("my name is \(female)")

let (_, _, quantity, _) = willenFamily
print(quantity)


print("\(willenFamily.0) and \(willenFamily.1) are part of the family")

let family = (female:"LN", male:"Ben", number:2, nice:true)
print("\(family.female) and \(family.male) are part of the family")

let width = 150
let height = 200
let length = 100
let volume = width * height * length
print("The volume is \(volume)")
print("The surface area is \(2 * width * length + 2 * length * height + 2 * width * height)")

let x = 100
print(x % 2)

let y = 101
print(y % 2)

print(x % 3)
print(y % 3)















