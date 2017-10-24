//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var sampleSentence = "Swift programming is fun and Vasudha loves it."
// reverses every word in the sentence
func reverseWordsInSentence(sentence : String) -> String{
    let allWords = sampleSentence.components(separatedBy: " ")
    var newSentence = ""
    for word in allWords{
        if newSentence != ""{
            newSentence += " "
        }
        let reversedWord = String(word.characters.reversed())
        newSentence += reversedWord

    }
    return newSentence
}

print(reverseWordsInSentence(sentence: sampleSentence))

// reverses every other word in the sentence
func reverseEveryOtherWordInSentence(sentence : String) ->String{
    
    let allWords = sampleSentence.components(separatedBy: " ")
    var newSentence = ""
    for index in 0...allWords.count-1{
        let word = allWords[index]
        if newSentence != ""{
            newSentence += " "
        }
        if index % 2 == 1 {
            let reversedWord = String(word.characters.reversed())
            newSentence += reversedWord.removeVowels()
        }else{
            newSentence +=  word.removeVowels()
        }
    }
    return newSentence
}

print(reverseEveryOtherWordInSentence(sentence: sampleSentence))

//remove vowels from the string
extension String{
    func removeVowels()->String{
        let vowels = ["a" , "e", "i" , "o" , "u"]
        var word = self
        for vowel in vowels{
            word = word.replacingOccurrences(of: vowel, with: "")
        }
        return word
    }
}
