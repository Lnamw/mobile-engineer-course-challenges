//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let value = 3
switch value {
case 1: print("one")
case 2: print("two")
case 3: print("three")
default: print("some other number")
}

let county = "SRY"
switch county {
    case "SRY": print("Surrey")
    case "SXW": print("west Sussex")
    case "DEV": print("Devon")
    case "CON": print("Cornwall")
default: print("Pther English County")
}

let v = 34

switch v {
case 0...9: print("One to nine")
case 10...99: print("ten to ninety nine")
case 100..<1000: print("One hundred to nine hundred and ninety nine")
default: print("Negative or thousand and greater")
}

// To check and/or extract the data from a tuple

let character = ("Le Génie", 1200) // this is a tuple
switch character {
case ("Le Génie", let age):  //check Le Génie and extract "age"
    print("You are Le Génie, and you are \(age) years old")
case(_, 30...39): // _ don't care about
    print("Your are not Le Génie and you are in your thirties")
case ("Aladdin", _):
    print("You friends name is Abu")
case(_,_):
    print("You are not Le Génie or Aladdin or you're not between 30 and 39")
}

// To extract the data from a tuple
let myTuple = ("xyz", 1020304050)
switch myTuple {
case let (x, y):
    print("The string 'x' is \(x), the integer 'y' is \(y)")
}

switch myTuple {
case (let x, let y):
    print("The string 'x' is \(x), the integer 'y' is \(y)")
}


enum Compass {
    case North, South, West, East   //pull the data
}
let myDirection = Compass.West
switch myDirection {
case .North: print("You are heading north")
case .South: print("You are heading south")
case .West: print("You are heading west")
case .East: print("You are heading east")
}


enum ParseResult {
    case Coordinates(Int, Int)
    case Error(String)
}

let result = ParseResult.Coordinates(12, 15)
switch result {
case let .Coordinates(x,y):
    print("Successful parse. Coords are (\(x), \(y)).")
case .Error(let err):
    print("Failed parse. Error is \(err)")
}

let aTuple = (100, 200)

switch aTuple {
case let (x, y) where x > y:
    print("\(x) is bigger than \(y)")
case let (x, y) where x == y:
    print("\(x) is equal to \(y)")
case let (x, y) where x < y:
    print("\(x) is smaller than \(y)")
default:
    print("none of them")
}



enum UKColour:String{
    case red = "Red"
    case blue = "Blue"
    case yellow = "Yellow"
    case green = "Green"
    case clear = "Clear"
    
    static func redColour()->String  // Static means it's an enum method

    {
        return UKColour.red.rawValue
    }
    static func blueColour()->String
    {
        return UKColour.blue.rawValue
    }
    static func yellowColour()->String
    {
        return UKColour.yellow.rawValue
    }
    static func greenColour()->String
    {
        return UKColour.green.rawValue
    }
    static func clearColour()->String
    {
        return UKColour.clear.rawValue
    }
}

let test = UKColour.redColour()

let colourName = "blue"
let colour : String = {
    switch colourName {
    case "red": return UKColour.redColour()
    case "green": return UKColour.greenColour()
    case "blue": return UKColour.blueColour()
    case "yellow": return UKColour.yellowColour()
    default: return UKColour.clearColour()
    }
}()

colour


// Static means it's an enum method













