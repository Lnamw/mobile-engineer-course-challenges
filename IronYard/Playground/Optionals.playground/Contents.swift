//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let aString = "999"
let anInt = Int(aString)

let aString1 = "A999"
let anInt1 = Int(aString1)

let place:Int? = nil
if place != nil
{
    print(place!)
}
else {
    print("Contains nil")
}

if let finishPlace = place
{
    print("This competitor's place was \(finishPlace)")
} else {
    print("This competitor didn't finish")
}

let place1:Int?
place1 = nil

