//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Enumeration are a types like Int, String...
// they can be a Type or a variable
/*
enum TravelClass
{
    case First
    case Business
    case EconomyPlus
    case Economy
//    case First, Business, EconomyPlus, Economy
}
let mySeat = TravelClass.Business
*/
enum TravelClass:Int
{
    case First = 210
    case Business = 140
    case EconomyPlus = 70
    case Economy = 35
}

let myJourney = TravelClass.First
switch myJourney
{
case .First:
    print("Champagne and Caviar")
    
case .Business:
    print("Free wine and a gool meal")
    
case .EconomyPlus:
    print("More leg room")
    
case .Economy:
    print("Cold food")
}



enum AtomicNumber:Int {
    case Hydrogen = 1, Helium, Lithium, Oxygen
}

AtomicNumber.Hydrogen.hashValue
AtomicNumber.Hydrogen.rawValue
AtomicNumber.Helium.rawValue
AtomicNumber.Lithium.rawValue
AtomicNumber.Oxygen.rawValue


let mySeat = TravelClass.Business
let myClass = mySeat
let myPoints = mySeat.rawValue

TravelClass.Business.hashValue
TravelClass.First.hashValue
TravelClass.Economy.hashValue
TravelClass.EconomyPlus.hashValue

TravelClass(rawValue: 210)
TravelClass(rawValue: 999)
TravelClass(rawValue: 35)


enum Colours
{
    case RGB(Int, Int, Int)
    case CMYK(Int, Int, Int,Int)
}

let myRGB1 = Colours.RGB(100, 100, 100)
let myCMYK = Colours.CMYK(255, 255, 0, 0)
let myRGB2 = Colours.RGB(50, 50, 50)

switch myRGB1
{
case .RGB(let redMix, let greenMix, let blueMix):
    print("The red is \(redMix)")
    print("The green is \(greenMix)")
    print("The blue is \(blueMix)")
case .CMYK:
    print("Not interested")
}

enum ColoursDef
{
    case RGB
    case CMYK
}

let myColour = ColoursDef.RGB

let resultColours:Colours
switch myColour
{
case .RGB:
    resultColours = .RGB(100, 50, 25)
case .CMYK:
    resultColours = .CMYK(100, 80, 60, 20)
}


























