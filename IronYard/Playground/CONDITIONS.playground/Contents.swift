//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let age = 29

if age >= 18
{
    print("You can vote")
}

let greeting = "Hi there"
let greeting1 = "Hi there"
if greeting == greeting1
{
    print("They are equal")
}

let age1 = 10
if age1 >= 18
{
    print("You can vote")
} else {
    print("You're too young")
}

let place = 2
if place == 1
{
    print("Gold medal")
}
else if place == 2 {
    print("Silver medal")
} else {
    print("No medal")
}

let porridgeTooHot = false
if porridgeTooHot == false
{
print("Eat porridge")
}
if !porridgeTooHot {
    print("Eat porridge")
}
if porridgeTooHot {
    print("Don't eat porridge")
}

let porridgeTooCold = true
if !porridgeTooHot && !porridgeTooCold {
    print("Eat porridge")
} else
{
    print("don't eat porridge")
}

let cash = false
let creditCard = false
if cash || creditCard {
    print("Ican top up my travel card")
}
else {
    print("can't catch the train")
}

let place2 = 2
switch place2 {
case 1:
    print("You won")
case 2:
    print("You came second")
case 3:
    print("You came third")
default:
    print("Also ran")
}

let place3 = 2
switch place3 {
case 1, 2, 3:
    print ("Medal winner")
case 4, 5, 6, 7, 8, 9, 10:
    print("Top 10 !")
default:
    print("Also ran")
}

let ran = 1...6
ran.startIndex
ran.endIndex
let ran2 = 1..<6
ran2.startIndex
ran2.endIndex


let inter = 1.0...6
inter.contains(7)
inter.contains(3.14159)
inter.start
inter.end

let stride1 = 2.stride(through: 8, by: 2)
// should see 2, 4, 6, 8
let stride2 = 2.stride(to: 8, by: 2)
// should see 2, 4, 6

Array(0.stride(through: 10, by: 2))
Array(0.stride(to: 10, by: 2)) 

















