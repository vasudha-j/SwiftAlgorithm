//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let numbers = [1,2,3,4,4,5,6,4,7,8]

//Filter function - filter a number from array into a new array
let filterdArray = numbers.filter({ return $0 == 4})
/*
 other ways to use it
 return $0 % 2 == 0 //to filter even numbers
 */
print(filterdArray)
 // filtered array is not mutable


//Map function
// transform the numbers array into [4, 8, ......16]
let transformedArray = numbers.map({ return $0 * 2})
print(transformedArray)

//Reduce
let sum = numbers.reduce(0 ,{ sum , number in number + sum })
print(sum)
