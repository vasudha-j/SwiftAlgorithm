//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Swift 2017
//Closures
func filterGreaterThanValues(value : Int, array : [Int]) -> [Int]{
    return array.filter({return $0 > 3})
}

//print(filterGreaterThanValues(value: 3, array: [2,1,3,1,4,5,6,7]))

//Using closure
func predicateWithClousre(closureParam : (Int) -> [Int], num : Int) -> [Int]{
   
   return closureParam(num)
    
}

var array = [1,2,3,4,5,6,7,8,9]



func canBePassedAsClosure(value : Int)->[Int]{
    return array.filter({return $0 > value})
}

//print(predicateWithClousre(closureParam: { (num) -> [Int] in
//    return array.filter({return $0 > num})
//}, num: 5))
print(predicateWithClousre(closureParam: canBePassedAsClosure, num: 8))
