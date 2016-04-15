//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let age = 100
if age >= 18
{
    print("You can vote")
}

let greeting = "Hi there"
let greeting2 = "Hi there"

if greeting == greeting2
{
    print("they are equal")
}

let aString = "How's your day been?"
if aString.hasPrefix("How")
{
    print("How is the first word")
}

if aString.hasSuffix("een?")
{
    print("ends with \"een?\"")
}

let age1 = 14
if age1 >= 18
{
    print("You can vote")
}
else {
    print("You're to young")
}

let place = 10
if place == 1
{
    print("Gold medal")
}
else if place == 2
{
    print("Silver medal")
}
else
{
    print("Also ran")
}

let porridgeTooHot = false
if porridgeTooHot == false
{
    print("Eat porridge")
}

let porridgeTooColde = true
if porridgeTooHot && !porridgeTooHot
{
    print("Eat porridge")
}
else
{
    print("Goldiloscks is not happy")
}

let cash = false
let creditCard = false
if cash || creditCard
{
    print("I can top up my Oyster card")
}
else
{
    print("Can't catch the train")
}


let place1 = 2
switch place1 {
    
case 1:
    print("you won")
    
case 2:
    print("you came second")
    
case 3:
    print("you came third")
    
default:
    print("Also ran")
}

let place2 = 3

switch place2 {
case 1, 2, 3:
    print("Medal winner")
    
case 4, 5, 6, 7, 8, 9, 10:
    print("Top 10")

default:
    print("Also ran")
}


let ran = 1...7
ran.startIndex
ran.endIndex

for i in 1..<8
{
    print(i)
}

let ran1 = 3..<9
ran1.startIndex
ran1.endIndex


let inter = 1.0...7
inter.contains(3.144159)
inter.contains(7.04)

let inter2 = "a"..."f"
inter2.contains("e")

inter2.start
inter2.end


let strd = 2.stride(through: 8, by: 2)
// should see 2, 4, 6, 8

Array(0.stride(through: 10, by: 2))

let strd1 = 2.stride(to: 8, by: 2)
Array(0.stride(to: 10, by: 2))















