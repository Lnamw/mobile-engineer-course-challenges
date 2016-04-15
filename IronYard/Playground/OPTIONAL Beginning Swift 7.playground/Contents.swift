//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// OPTIONNAL = Int?  --> any can become optional with ? at the end

let aString = "999"
let anInt = Int(aString)

let aString1 = "A999"
let anInt2:Int? = Int(aString1)

// ! to force unwrapping. /!\ you have to know if there is someting in the box: not equal to nil

if anInt != nil
{
    print(anInt!)
}

// place is a box, not an integer:
let place:Int? = 2
if let finishPlace = place
{
    print("This competitor's place was \(finishPlace)")
}
else
{
    print("This competitor didn't finish")
}
// "if let" check before to see if there is a nil: Is there an integer inside place box? true/false

print(place!)
// I can do that because I know ut's unwrappable : it's not equal to nil!

let place1:Int! = 33
if let realPlace = place1
{
    print(realPlace)
}
print(place1)

//default would never be completed
//let place3:Int? = nil
//switch place3
//{
//case let position:
//    print("You ran the race")
//    
//default:
//    print("Didn't finish")
//}

let place3:Int? = nil
switch place3
{
case let position where position == 1:
    print("You came first")
    
case let position where position == 2:
    print("You came second")
    
case let position where position == 3:
    print("You came thrid")

case let position where position >= 4:
    print("Also ran")

default:
    print("Didn't finish")
}
// case let create a constant to take the value out, where is an if to check the value


let opVar:Int? = nil
print(opVar)
print(opVar ?? 0)
// if there is an nil in there replace it by the value after the ?? could be "a"

//print(1 + opVar ?? 0)   won't work because has a lower priority than add...
print(1 + (opVar ?? 0))

let numList = [1,2,3,4,5]
numList.first
print(numList.first)

let emptyArray = [Int]()
print(emptyArray.first)
// .first always give you an optional











