//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func factorial(value : UInt) -> UInt{
    
    if value == 0{
        return 1
    }
    var product : UInt = 1
    for i in 1...value{
        
        product = product * i
        
    }
    return product
}

print(factorial(value: 10))

func recursiveFactorial(value : UInt) -> UInt{
    if value == 0{
        return 1
    }
    return value * recursiveFactorial(value: value - 1)
}

recursiveFactorial(value: 10)

