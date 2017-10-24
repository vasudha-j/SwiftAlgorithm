//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func mostCommonNameInAnArray(array : [String]) -> String {
    var nameCountDictionary = [String : Int]()
    for name in array{
        if let count = nameCountDictionary[name]{
             nameCountDictionary[name] = count + 1
            
        }else {
            nameCountDictionary[name] = 1
            
        }
    }
    
    var mostCommonName = ""
    
    for key in nameCountDictionary.keys{
        
        if(mostCommonName == ""){
            mostCommonName = key
        }else{
            let count = nameCountDictionary[key]!
            if count > nameCountDictionary[mostCommonName]!{
                mostCommonName = key
            }
        }
        print("\(key) : \(nameCountDictionary[key]!)")
        
    }
    
    return mostCommonName
}

var nameArray = ["Vasudha","xyz","xyz","vasudha","XYZ","vasudha","vasudha","YOU","abc"]

mostCommonNameInAnArray(array: nameArray)
