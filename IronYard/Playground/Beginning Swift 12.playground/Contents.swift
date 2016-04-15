//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//SORT Function
/*
 you can to tell how to sort by create a function (forward)
*/

func forwards(s1: String, s2: String) -> Bool
{
    return s1 < s2
}

let letters = ["G", "D", "Z", "A"]
let sorted = letters.sort(forwards)


// or you can do with a closure :
let myCollection = letters.sort({
    (s1: String, s2: String) -> Bool
    in
    return s1 < s2 } )

// Simplify
let myCollection2 = letters.sort({
    s1, s2     //in knows it will be string because we are sorting an array of String
    in
    return s1 < s2 } )

//Even simpler
let myCollection3 = letters.sort({$0<$1})  //always taking two objects in the array
myCollection3

//Even Simpler
let myCollection4 = letters.sort(>)
myCollection4


// MAP Function
// Don't need a for loop to go in each element of the array

let numbers = [5, 3, 7, 8, 2, 4, 9]

let myNumCollection = numbers.map({$0 * $0})  //multiply every numbers by itself
myNumCollection

let myNumCollection1 = numbers.map({$0 * $0 + 1})  //multiply every numbers by itself and add 1
myNumCollection1

//Or two change a string into an array of character
let stringArray:[Character] = "hello".characters.map({$0})
stringArray


//FILTER function
//to filter and keep only what you want, here modulus2 = 1
let myNumCollection2 = numbers.filter({$0%2 == 1})
myNumCollection2


//REDUCE function
// to reduce an array in 1 by adding, multipying...

let myNumCollection3 = numbers.reduce(0, combine: {$0 + $1}) //add a the value of the array
myNumCollection3

letters.reduce("", combine: {$0 + $1})

stringArray.reduce("", combine: {String($0) + String($1)})

//ZIP Funciton
// Combine to array to make an array of tuples

let n1 = [1,2,3,4,5]
let a1 = ["a", "b", "c", "d", "e"]
let z1 = zip(n1, a1)
print(Array(z1))
print(z1)

//You can combine all this function one after an other.
//Here we filter and then reduce (garde que les chiffres interessant et add the number restant)
let a = numbers.filter({$0%2 == 1}).reduce(0, combine: {$0 + $1})
print(a)







