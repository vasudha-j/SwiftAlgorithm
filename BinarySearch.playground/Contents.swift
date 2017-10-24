//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/* Given an array of integers, search through this array,
 also want to return true if you find search value
 else return false
 */
var numbers = [9, 10 , 12, 35, 24, 60, 98]

func linearSearch(searchValue : Int, array : [Int]) ->Bool{
    for num in array{
        if num == searchValue{
            return true
        }
    }
    return false
}
print(linearSearch(searchValue: 2, array: numbers))

func binarySearch(searchValue : Int, numArray :[Int]) -> Bool{
    var array = numArray.sorted {$0 < $1}
    var leftIndex = 0
    var rightIndex = array.count-1
    while leftIndex <= rightIndex{
        var middleIndex = (leftIndex + rightIndex )/2
        var middleValue = array[middleIndex]
        print("middleValue : \(middleValue) , rightValue :\(array[rightIndex]) , leftValue : \(array[leftIndex])")
        if middleValue == searchValue {
            return true
        }
        
        if middleValue < searchValue{
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue{
             leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearch(searchValue: 98, numArray: numbers))
