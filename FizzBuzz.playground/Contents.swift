//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/* FizzBuzz Algorithm
 A series of numbers in sequential order are divided by 3 and 5
Divisible by 3 - fizz
Divisible by 5 - buzz
Divisible by 3 and 5 - fizzbuzz
 */

let numbers = [1,2,3,4,5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
var oneThousandNumbers = [Int]()
for i in 1...100{
    oneThousandNumbers.append(i)
}
for num in oneThousandNumbers{
    
    if num % 15 == 0{
        print("\(num) fizzbuzz")
    }
    else if(num % 3 == 0){
        
        print("\(num) fizz")
    }else if(num % 5 == 0){
        
        print("\(num) buzz")
    }else{
        print(num)
    }
    
}

