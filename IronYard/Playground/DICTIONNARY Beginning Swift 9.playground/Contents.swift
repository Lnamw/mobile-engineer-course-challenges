//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let shoppingPoints:Dictionary<String,Int>
shoppingPoints = ["Elena":74, "Ben":55, "Lalie":40]

shoppingPoints.count

//Create empty array
let emptyDict = Dictionary<String,String>()
emptyDict.isEmpty

shoppingPoints["Ben"]
shoppingPoints["Maceo"]

// To see the keys or the values
Array(shoppingPoints.keys)
shoppingPoints.keys

Array(shoppingPoints.values)
shoppingPoints.values

//To put array in a Dictionnary
let cardsBen = [1,2,3,4,5]
let cardsElena = [6,7,8,9,10]
let shoppingCards = ["Ben":cardsBen, "Elena":cardsElena]

// To copy the Dict
let shoppingCards2 = shoppingCards

