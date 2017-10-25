//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func generateFibonacciSequence(number : Int) ->[Int]{
    
    var sequence = [0,1]
    if number <= 1 {
        return sequence
    }
    (0...number - 2).forEach{ _ in
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

print(generateFibonacciSequence(number: 10))


func fibnocciOnRecursion(number : Int, firstValue : Int, secondValue : Int) -> [Int]{
    
    if number == 0{
        return []
    }
    //print(firstValue , secondValue)
    return [firstValue  + secondValue] + fibnocciOnRecursion(number: number - 1, firstValue: secondValue, secondValue: firstValue + secondValue)
}

print( [0 ,1] + fibnocciOnRecursion(number: 10, firstValue: 0, secondValue: 1))
