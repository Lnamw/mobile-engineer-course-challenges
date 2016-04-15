//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//FUNCTIONS
/*
name + signature :
name(Int)->Int
in closure only signature.
you can have two function with the same name but different signature.
we use the name to call a function

*/

func showPi() {
    print("Pi is π")
}
showPi()

//CLosure
let maxC = {
    (number1:Int, number2:Int) -> Int
    in
    return number1 > number2 ? number1 : number2
}
//Function
func max1(number1:Int, number2:Int) -> Int {
    return number1 > number2 ? number1 : number2
}

max1(1,number2: 7)

//Overloading : same name but different signature
func max1(number1: Double, number2:Double) -> Double {
    return number1 > number2 ? number1 : number2
}
max1(3.3,number2: 7)

max1(3.0,number2: 7.1)

func max1(String1: String, String2:String) -> String {
    print("String")
    return String1 > String2 ? String1 : String2
}

max1("Elena", String2: "Ben")


func hiThere(fn:String, sn:String) {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}

hiThere("Elena", sn: "Willen")


func hiThere(fn:String, _ sn:String) {  //To not see 2nd parameter when you call the fc
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}

hiThere("Elena","Willen")


func hiThere(firstname fn:String, secondename sn:String) {  //To see 1st 2nd parameter when you call the fc
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}

hiThere(firstname: "Elena", secondename: "Willen")



func shoppingPoints(fn:String, _ sn:String, _ points:Int = 0)
{
    let name_points = fn + " " + sn + " " + String (points) //change int into a string to concatenate
    print(name_points)
}

shoppingPoints("Ln", "Wi", 100)
shoppingPoints("Ln", "Wi")

//Function in function
func upElseDown (addElseSub: Bool) -> () -> String
{
    func increase() -> String { return "Up Vote" }
    func decrease() -> String { return "Down Vote" }
    return addElseSub ? increase : decrease
}

let upOrDownVote = false
let vote = upElseDown(upOrDownVote)
print("You got an \(vote())")



//Recursion

//let numList = [1,2,3,4,5,6]
//func walkArray(arr:[Int])
//{
//    if let head = first(arr)
//    {
//        let tail = Array(arr.dropFirst())
//        print(head)
//        walkArray(tail)
//    }
//}
//walkArray(numList)










