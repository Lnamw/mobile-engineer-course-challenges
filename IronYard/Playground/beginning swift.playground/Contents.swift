//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let Pi:Double

Pi = 3.14

let 😎 = "Hi"

print(😎)
print("I'd like to say \(😎) and π is \(Pi)")



let h = 1, j = "Hello"

print(h)
print(j.characters)

let a = 😎 + " " + j
print(a)

😎.uppercaseString
😎.lowercaseString
😎.characters.count

let aString = "abcdefghijk1234567890"
let index = aString.startIndex
let index1 = aString.startIndex.advancedBy(9)
print(index1)

let newString = aString.substringToIndex(index1)
let newString2 = aString.substringFromIndex(index1)

let start = index
let end = aString.startIndex.advancedBy(15)
let newString3 = aString.substringWithRange(start...end)

let z:NSString = "Hi there"
z.length